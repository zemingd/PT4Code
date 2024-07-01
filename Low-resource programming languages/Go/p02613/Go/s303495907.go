//go:generate echo "https://atcoder.jp/contests/abc173/tasks/abc173_b"
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

func (s *scanner) Ints(l int) []int {
	if l == 0 {
		return []int{}
	}
	sl := make([]int, l, l)
	for i := range sl {
		sl[i] = s.Int()
	}
	return sl
}

func (s *scanner) String() string {
	s.Scan()
	return s.Text()
}

func (s *scanner) Strings(l int) []string {
	if l == 0 {
		return []string{}
	}
	sl := make([]string, l, l)
	for i := range sl {
		sl[i] = s.String()
	}
	return sl
}

func solve(S, labels []string) []int {
	c := make([]int, len(labels), len(labels))
	for _, s := range S {
		for i, l := range labels {
			if s == l {
				c[i]++
			}
		}
	}
	return c
}

func run(r io.Reader, w io.Writer) {
	scan := newScanner(r)
	N := scan.Int()
	S := scan.Strings(N)
	labels := []string{"AC", "WA", "TLE", "RE"}
	c := solve(S, labels)
	for i, l := range labels {
		fmt.Fprintf(w, "%s x %d\n", l, c[i])
	}
}

func main() {
	run(os.Stdin, os.Stdout)
}
