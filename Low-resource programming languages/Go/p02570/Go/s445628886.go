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

func solve(d, t, s int) bool {
	return float64(d) / float64(s) <= float64(t)
}

func main() {
	scan := newScanner(os.Stdin)
	d, t, s := scan.Int(), scan.Int(), scan.Int()
	if solve(d, t, s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
