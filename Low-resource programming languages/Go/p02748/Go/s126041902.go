package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func exec(stdin *Stdin, stdout *Stdout) {
	A := stdin.ReadInt()
	B := stdin.ReadInt()
	M := stdin.ReadInt()
	a := make([]int, A)
	b := make([]int, B)
	x := make([]int, M)
	y := make([]int, M)
	c := make([]int, M)
	for i := 0; i < A; i++ {
		a[i] = stdin.ReadInt()
	}
	for i := 0; i < B; i++ {
		b[i] = stdin.ReadInt()
	}
	for i := 0; i < M; i++ {
		x[i] = stdin.ReadInt() - 1
		y[i] = stdin.ReadInt() - 1
		c[i] = stdin.ReadInt()
	}

	ans := Min(a[0], a[1:]...) + Min(b[0], b[1:]...)
	for i := 0; i < M; i++ {
		ans = Min(ans, a[x[i]]+b[y[i]]-c[i])
	}
	stdout.Println(ans)
}

func Min(a int, b ...int) int {
	for _, v := range b {
		if v < a {
			a = v
		}
	}
	return a
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
