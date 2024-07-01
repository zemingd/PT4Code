//go:generate echo "https://atcoder.jp/contests/dp/tasks/dp_a"
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

func solve(n int, heights []int) int {
	t := make([]int, n+1, n+1)
	for i := range t {
		t[i] = math.MaxInt64
	}

	t[0] = 0
	for i := 1; i < n; i++ {
		if v := t[i-1] + iabs(heights[i]-heights[i-1]); v < t[i] {
			t[i] = v
		}
		if 1 < i {
			if v := t[i-2] + iabs(heights[i]-heights[i-2]); v < t[i] {
				t[i] = v
			}
		}
	}

	return t[n-1]
}

func main() {
	sc := newScanner(os.Stdin)
	n := sc.Int()
	heights := sc.IntSlice(n)
	ans := solve(n, heights)
	fmt.Println(ans)
}
