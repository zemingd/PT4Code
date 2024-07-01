//go:generate echo "https://atcoder.jp/contests/abc177/tasks/abc177_a"
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

type scanner struct{ *bufio.Scanner }

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	s.Buffer(nil, 100000000)
	return &scanner{s}
}

func (s *scanner) Float64() float64 {
	s.Scan()
	f, _ := strconv.ParseFloat(s.Text(), 64)
	return f
}

func (s *scanner) Float64Slice(l int) []float64 {
	if l == 0 {
		return []float64{}
	}
	sl := make([]float64, l, l)
	for i := range sl {
		sl[i] = s.Float64()
	}
	return sl
}

func solve(d, t, s float64) bool {
	return d/s <= t
}

func main() {
	scan := newScanner(os.Stdin)
	d, t, s := scan.Float64(), scan.Float64(), scan.Float64()
	if solve(d, t, s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
