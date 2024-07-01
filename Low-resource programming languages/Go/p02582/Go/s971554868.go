//go:generate echo "https://atcoder.jp/contests/abc175/tasks/abc175_a"
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

func solve(S string) int {
	switch S {
	case "SSS":
		return 0
	case "SSR", "RSS", "RSR":
		return 1
	case "RRR":
		return 3
	default:
		return 2
	}
}

func main() {
	scan := newScanner(os.Stdin)
	S := scan.String()
	fmt.Println(solve(S))
}
