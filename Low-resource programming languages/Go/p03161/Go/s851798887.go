//go:generate echo "https://atcoder.jp/contests/dp/tasks/dp_b"
package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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

func iabs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func solve(n, k int, h []int) int {
	t := make([]int, n+k+1, n+k+1)
	for i := range t {
		t[i] = math.MaxInt64
	}
	t[0] = 0
	for i := 0; i < n; i++ {
		for j := 0; j <= k; j++ {
			if v := t[i] + iabs(h[i+j]-h[i]); v < t[i+j] {
				t[i+j] = v
			}
		}
	}
	return t[n-1]
}

func main() {
	scan := newScanner(os.Stdin)
	n, k := scan.Int(), scan.Int()
	h := make([]int, n+k+1, n+k+1)
	for i := 0; i < n; i++ {
		h[i] = scan.Int()
	}
	a := solve(n, k, h)
	fmt.Println(a)
}
