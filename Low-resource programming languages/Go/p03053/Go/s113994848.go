package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func exec(stdin *Stdin, stdout *Stdout) {
	h := stdin.ReadInt()
	w := stdin.ReadInt()
	a := []string{}
	for i := 0; i < h; i++ {
		a = append(a, stdin.Read())
	}

	b := [][]bool{}
	q := NewDeque()
	for i := 0; i < h; i++ {
		b = append(b, []bool{})
		for j := 0; j < w; j++ {
			b[i] = append(b[i], false)
		}
	}

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if a[i][j] == '#' {
				q.AppendLast(&Tuple{x: i, y: j, count: 0})
				b[i][j] = true
			}
		}
	}

	ans := 0
	diffs := []Tuple{
		Tuple{x: 0, y: 1},
		Tuple{x: 0, y: -1},
		Tuple{x: 1, y: 0},
		Tuple{x: -1, y: 0},
	}
	for !q.IsEmpty() {
		cur, _ := q.PopFirst().(*Tuple)
		ans = Max(ans, cur.count)
		for _, diff := range diffs {
			nx := cur.x + diff.x
			ny := cur.y + diff.y
			if 0 <= nx && nx < h && 0 <= ny && ny < w && !b[nx][ny] {
				b[nx][ny] = true
				q.AppendLast(&Tuple{x: nx, y: ny, count: cur.count + 1})
			}
		}
	}

	stdout.Println(ans)
}

type Tuple struct {
	x     int
	y     int
	count int
}

func main() {
	stdout := NewStdout()
	exec(NewStdin(bufio.ScanWords), stdout)
	stdout.Flush()
}

type Stdin struct {
	stdin *bufio.Scanner
}

func NewStdin(split bufio.SplitFunc) *Stdin {
	s := Stdin{bufio.NewScanner(os.Stdin)}
	s.stdin.Split(split)
	s.stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), int(math.MaxInt32))
	return &s
}

func (s *Stdin) Read() string {
	s.stdin.Scan()
	return s.stdin.Text()
}

func (s *Stdin) ReadInt() int {
	n, _ := strconv.Atoi(s.Read())
	return n
}

func (s *Stdin) ReadFloat64() float64 {
	n, _ := strconv.ParseFloat(s.Read(), 64)
	return n
}

type Stdout struct {
	stdout *bufio.Writer
}

func NewStdout() *Stdout {
	return &Stdout{bufio.NewWriter(os.Stdout)}
}

func (s *Stdout) Flush() {
	s.stdout.Flush()
}

func (s *Stdout) Println(a ...interface{}) {
	fmt.Fprintln(s.stdout, a...)
}

type Deque struct {
	deque []interface{}
}

func NewDeque() *Deque {
	return &Deque{deque: []interface{}{}}
}

func (d *Deque) AppendFirst(v interface{}) {
	e := make([]interface{}, len(d.deque)+1)
	copy(e[1:], d.deque)
	d.deque = e
}

func (d *Deque) AppendLast(v interface{}) {
	d.deque = append(d.deque, v)
}

func (d *Deque) PopLast() interface{} {
	n := len(d.deque)
	v := d.deque[n-1]
	d.deque = d.deque[0 : n-1]
	return v
}

func (d *Deque) PopFirst() interface{} {
	v := d.deque[0]
	d.deque = d.deque[1:]
	return v
}

func (d *Deque) IsEmpty() bool {
	return len(d.deque) == 0
}

func Max(a ...int) int {
	v := a[0]
	for i := 1; i < len(a); i++ {
		if v < a[i] {
			v = a[i]
		}
	}
	return v
}
