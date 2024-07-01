package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	uf := newUF(N)
	var x, y int
	for i := 0; i < M; i++ {
		fmt.Scan(&x, &y)
		uf.unite(x-1, y-1)
	}
	checked := make([]int, uf.n)
	for i := range checked {
		r := uf.root(i)
		checked[r]++
	}
	fmt.Println(max(checked))

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
		pair[i] = i
	}
	uf.pair = pair
	return uf
}
func (uf unionFind) unite(x int, y int) {
	rx := uf.root(x)
	ry := uf.root(y)
	if rx != ry {
		uf.pair[rx] = ry
	}
}
func (uf unionFind) root(x int) int {
	r := x
	for {
		if uf.pair[r] == r {
			break
		}
		r = uf.pair[r]
	}
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
func max(a []int) int {
	max := a[0]
	for _, i := range a {
		if i > max {
			max = i
		}
	}
	return max
}
