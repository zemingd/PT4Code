package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

const INFINITY = math.MaxInt64/2 - 1

func exec(stdin *Stdin, stdout *Stdout) {
	x := stdin.ReadInt()
	y := stdin.ReadInt()
	a := stdin.ReadInt()
	b := stdin.ReadInt()
	c := stdin.ReadInt()
	p := make([]int, a)
	q := make([]int, b)
	r := make([]int, c)
	for i := 0; i < a; i++ {
		p[i] = stdin.ReadInt()
	}
	for i := 0; i < b; i++ {
		q[i] = stdin.ReadInt()
	}
	for i := 0; i < c; i++ {
		r[i] = stdin.ReadInt()
	}

	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)

	s1 := NewDeque()
	t1 := NewDeque()
	u1 := NewDeque()
	for _, v := range p {
		s1.AppendLast(v)
	}
	for _, v := range q {
		t1.AppendLast(v)
	}
	for _, v := range r {
		u1.AppendLast(v)
	}

	ans1 := 0
	for i := 0; i < x; i++ {
		if u1.IsEmpty() {
			ans1 += s1.PopLast().(int)
		} else {
			if s1.PeekLast().(int) < u1.PeekLast().(int) {
				ans1 += u1.PopLast().(int)
			} else {
				ans1 += s1.PopLast().(int)
			}
		}
	}

	for i := 0; i < y; i++ {
		if u1.IsEmpty() {
			ans1 += t1.PopLast().(int)
		} else {
			if t1.PeekLast().(int) < u1.PeekLast().(int) {
				ans1 += u1.PopLast().(int)
			} else {
				ans1 += t1.PopLast().(int)
			}
		}
	}

	s2 := NewDeque()
	t2 := NewDeque()
	u2 := NewDeque()
	for _, v := range p {
		s2.AppendLast(v)
	}
	for _, v := range q {
		t2.AppendLast(v)
	}
	for _, v := range r {
		u2.AppendLast(v)
	}

	ans2 := 0
	for i := 0; i < y; i++ {
		if u2.IsEmpty() {
			ans2 += t2.PopLast().(int)
		} else {
			if t2.PeekLast().(int) < u2.PeekLast().(int) {
				ans2 += u2.PopLast().(int)
			} else {
				ans2 += t2.PopLast().(int)
			}
		}
	}

	for i := 0; i < x; i++ {
		if u2.IsEmpty() {
			ans2 += s2.PopLast().(int)
		} else {
			if s2.PeekLast().(int) < u2.PeekLast().(int) {
				ans2 += u2.PopLast().(int)
			} else {
				ans2 += s2.PopLast().(int)
			}
		}
	}

	stdout.Println(Max(ans1, ans2))
}

type Deque struct {
	head []interface{}
	tail []interface{}
}

func NewDeque() *Deque {
	return &Deque{
		head: []interface{}{},
		tail: []interface{}{},
	}
}

func (d *Deque) AppendLast(v interface{}) {
	d.tail = append(d.tail, v)
}

func (d *Deque) AppendFirst(v interface{}) {
	d.head = append(d.head, v)
}

func (d *Deque) PopLast() interface{} {
	if len(d.tail) == 0 {
		v := d.head[0]
		d.head = d.head[1:]
		return v
	} else {
		v := d.tail[len(d.tail)-1]
		d.tail = d.tail[:len(d.tail)-1]
		return v
	}
}

func (d *Deque) PopFirst() interface{} {
	if len(d.head) == 0 {
		v := d.tail[0]
		d.tail = d.tail[1:]
		return v
	} else {
		v := d.head[len(d.head)-1]
		d.head = d.head[:len(d.head)-1]
		return v
	}
}

func (d *Deque) IsEmpty() bool {
	return len(d.head) == 0 && len(d.tail) == 0
}

func (d *Deque) PeekFirst() interface{} {
	if len(d.head) == 0 {
		return d.tail[0]
	} else {
		return d.head[len(d.head)-1]
	}
}

func (d *Deque) PeekLast() interface{} {
	if len(d.tail) == 0 {
		return d.head[0]
	} else {
		return d.tail[len(d.tail)-1]
	}
}

func main() {
	stdout := NewStdout()
	defer stdout.Flush()
	exec(NewStdin(bufio.ScanWords), stdout)
}

type Stdin struct {
	stdin *bufio.Scanner
}

func NewStdin(split bufio.SplitFunc) *Stdin {
	s := Stdin{bufio.NewScanner(os.Stdin)}
	s.stdin.Split(split)
	s.stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), INFINITY)
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

func Min(a int, b ...int) int {
	for _, v := range b {
		if v < a {
			a = v
		}
	}
	return a
}

func Max(a int, b ...int) int {
	for _, v := range b {
		if a < v {
			a = v
		}
	}
	return a
}

func Abs(x int) int {
	if x > 0 {
		return x
	} else {
		return x * -1
	}
}

func Pow(x, y int) int {
	z := 1
	for y > 0 {
		if y%2 == 0 {
			x *= x
			y /= 2
		} else {
			z *= x
			y -= 1
		}
	}
	return z
}
