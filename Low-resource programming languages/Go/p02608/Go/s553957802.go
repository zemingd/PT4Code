// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func solve(sc *scanner, wr *bufio.Writer) int {
	N := sc.i()

	ans := map[int]int{}

	nmax := 10050
	for x := 1; x*x <= nmax; x++ {
		for y := 1; (x*x + y*y + x*y) <= nmax; y++ {
			for z := 1; x*x+y*y+z*z+x*y+y*z+x*z <= nmax; z++ {
				v := x*x + y*y + z*z + x*y + y*z + x*z
				if v < nmax {
					ans[v]++
				}
			}
		}
	}

	for i := 1; i <= N; i++ {
		fmt.Println(ans[i])
	}

	return 0
}

func main() {
	sc := newScanner(os.Stdin)
	wr := bufio.NewWriter(os.Stdout)
	ret := solve(sc, wr)
	wr.Flush()
	os.Exit(ret)
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
