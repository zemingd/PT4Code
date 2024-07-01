//go:generate echo "https://atcoder.jp/contests/abc176/tasks/abc176_a"
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

func (s *scanner) Int() int {
	s.Scan()
	n, _ := strconv.Atoi(s.Text())
	return n
}

func (s *scanner) IntSlice(l int) []int {
	if l == 0 {
		return []int{}
	}
	sl := make([]int, l, l)
	for i := range sl {
		sl[i] = s.Int()
	}
	return sl
}

func (s *scanner) IntSlice2(l, n int) []int {
	if l == 0 {
		return []int{}
	}
	sl := make([]int, l, l)
	for i := 0; i < n; i++ {
		sl[i] = s.Int()
	}
	return sl
}

func solve(n, x, t int) int {
	return ((n + x - 1) / x) * t
}

func main() {
	scan := newScanner(os.Stdin)
	n, x, t := scan.Int(), scan.Int(), scan.Int()
	fmt.Println(solve(n, x, t))
}
