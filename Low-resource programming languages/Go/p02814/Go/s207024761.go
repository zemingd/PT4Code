package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func exec(stdin *Stdin, stdout *Stdout) {
	n := stdin.ReadInt()
	m := stdin.ReadInt()
	a := []int{}
	for i := 0; i < n; i++ {
		a = append(a, stdin.ReadInt())
	}

	c := 0
	for a[0]%2 == 0 {
		a[0] /= 2
		c++
	}

	for i := 1; i < n; i++ {
		d := 0
		for a[i]%2 == 0 {
			a[i] /= 2
			d++
		}

		if c != d {
			stdout.Println(0)
			return
		}
	}

	for m%2 == 0 {
		m /= 2
	}

	lcm := 1
	for i := 0; i < n; i++ {
		lcm = Lcm(lcm, a[i])
	}

	if lcm <= m {
		stdout.Println((m/lcm + 1) / 2)
	} else {
		stdout.Println(0)
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

func Gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}

	for y > 0 {
		x, y = y, x%y
	}

	return x
}

func Lcm(x, y int) int {
	return x * y / Gcd(x, y)
}
