package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	sc := newScanner(os.Stdin)
	_ = sc
	N := sc.i()
	Iwashis := make([][]int, N)
	for i := 0; i < N; i++ {
		a := sc.i()
		b := sc.i()
		Iwashis[i] = []int{a, b}
	}
	sum := 0
	for i, a := range Iwashis {
		sum = sum % 1000000007
		sum = sum + 1
		for _, b := range Iwashis[i+1:] {
			if a[0] == -1*b[1] && a[1] == -1*b[0] {
				continue
			}
			sum = sum + 1
		}
	}

	fmt.Println(sum)
}

// I/O
type scanner struct {
	sc *bufio.Scanner
}

func newScanner(input io.Reader) *scanner {
	sc := bufio.NewScanner(input)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &scanner{sc}
}

func (s *scanner) s() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *scanner) i() int {
	i, e := strconv.Atoi(s.s())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *scanner) f() float64 {
	f, e := strconv.ParseFloat(s.s(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *scanner) bs() []byte {
	return []byte(s.s())
}

func (s *scanner) is(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.i()
	}
	return res
}

func (s *scanner) fs(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.f()
	}
	return res
}
