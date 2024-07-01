//go:generate echo "https://atcoder.jp/contests/abc177/tasks/abc177_b"
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

type scanner struct{ *bufio.Scanner }

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	s.Buffer(nil, 100000000)
	return &scanner{s}
}

func (s *scanner) String() string {
	s.Scan()
	return s.Text()
}

func (s *scanner) StringSlice(l int) []string {
	if l == 0 {
		return []string{}
	}
	sl := make([]string, l, l)
	for i := range sl {
		sl[i] = s.String()
	}
	return sl
}

func solve(s, t string) int {
	maxMatch := 0
	for i := 0; i+len(t) <= len(s); i++ {
		match := 0
		for ci, sc := range s[i : i+len(t)] {
			if sc == rune(t[ci]) {
				match++
			}
		}
		if maxMatch < match {
			maxMatch = match
		}
	}
	return len(t) - maxMatch
}

func main() {
	scan := newScanner(os.Stdin)
	s, t := scan.String(), scan.String()
	fmt.Println(solve(s, t))
}
