//go:generate echo "https://atcoder.jp/contests/dp/tasks/dp_d"
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

func chmax(x *int, v int) {
	if *x < v {
		*x = v
	}
}

func solve(N, W int, wvs [][]int) int {
	t := make([][]int, N+1, N+1) // t[item_index][weight]
	for i := range t {
		t[i] = make([]int, W+1, W+1)
	}
	for i, wv := range wvs {
		w, v := wv[0], wv[1]
		for sumWeight := 0; sumWeight <= W; sumWeight++ {
			if wdiff := sumWeight - w; wdiff >= 0 {
				chmax(&t[i+1][sumWeight], t[i][wdiff]+v)
			}
			chmax(&t[i+1][sumWeight], t[i][sumWeight])
		}
	}
	return t[N][W]
}

func main() {
	scan := newScanner(os.Stdin)
	N, W := scan.Int(), scan.Int()
	wvs := make([][]int, N, N)
	for i := 0; i < N; i++ {
		wvs[i] = []int{scan.Int(), scan.Int()}
	}
	fmt.Println(solve(N, W, wvs))
}
