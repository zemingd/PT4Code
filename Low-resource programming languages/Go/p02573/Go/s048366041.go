package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	var N, M int
	fmt.Fscan(r, &N, &M)
	uf := newUF(N)
	var x, y int
	for i := 0; i < M; i++ {
		fmt.Fscan(r, &x, &y)
		uf.unite(x-1, y-1)
	}
	var ans int
	for i := 0; i < N; i++ {
		if ans < uf.size(i) {
			ans = uf.size(i)
		}
	}
	fmt.Fprintln(w, ans)

}

type unionFind struct {
	pair []int
	n    int
}

func newUF(N int) *unionFind {
	uf := new(unionFind)
	uf.n = N
	pair := make([]int, N)
	for i := 0; i < N; i++ {
		pair[i] = -1
	}
	uf.pair = pair
	return uf
}
func (uf unionFind) unite(x int, y int) {
	rx := uf.root(x)
	ry := uf.root(y)
	if rx != ry {
		uf.pair[ry] += uf.pair[rx]
		uf.pair[rx] = ry
	}
}
func (uf unionFind) root(x int) int {
	r := x
	for {
		if uf.pair[r] < 0 {
			break
		}
		r = uf.pair[r]
	}
	uf.pair[x] = r
	return r
}
func (uf unionFind) same(x int, y int) bool {
	rx := uf.root(x)
	ry := uf.root(y)
	return rx == ry
}
func (uf unionFind) countTree() int {
	ans := 0
	checked := make([]bool, uf.n)
	for i := range checked {
		r := uf.root(i)
		if checked[r] {
			checked[r] = true
			ans++
		}
	}
	return ans
}
func (uf unionFind) size(x int) int {
	return -uf.pair[uf.root(x)]
}
func max(a []int) int {
	max := a[0]
	for _, i := range a {
		if i > max {
			max = i
		}
	}
	return max
}
