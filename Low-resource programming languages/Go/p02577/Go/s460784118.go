//go:generate echo "https://atcoder.jp/contests/abc176/tasks/abc176_b"
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

func solve(n string) bool {
	sum := 0
	for _, c := range n {
		n, _ := strconv.Atoi(string(c))
		sum += n
	}
	return sum%9 == 0
}

func main() {
	scan := newScanner(os.Stdin)
	n := scan.String()
	if solve(n) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
