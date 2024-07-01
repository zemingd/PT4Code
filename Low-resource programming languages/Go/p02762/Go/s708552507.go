package main

import (
	"fmt"
)

type UnionFind struct {
	root []int
}

func NewUnionFind(x int) *UnionFind {
	u := UnionFind{make([]int, x+1)}
	for i := 0; i < x+1; i++ {
		u.root[i] = i
	}
	return &u
}

func (u UnionFind) Root(x int) int {
	if u.root[x] == x {
		return x
	}
	u.root[x] = u.Root(u.root[x])
	return u.root[x]
}

func (u UnionFind) Same(x, y int) bool {
	return u.Root(x) == u.Root(y)
}

func (u UnionFind) Unite(x, y int) {
	x = u.Root(x)
	y = u.Root(y)
	if x == y {
		return
	}
	u.root[x] = y
}

func main() {
	var n, m, k int
	fmt.Scan(&n, &m, &k)

	f := make([]int, n+1)
	b := make([]int, n+1)
	u := NewUnionFind(n)

	for i := 0; i < m; i++ {
		var f1, f2 int
		fmt.Scan(&f1, &f2)
		f[f1]++
		f[f2]++
		u.Unite(f1, f2)
	}

	for i := 0; i < k; i++ {
		var b1, b2 int
		fmt.Scan(&b1, &b2)
		if u.Same(b1, b2) {
			b[b1]++
			b[b2]++
		}
	}

	for i := 1; i < n+1; i++ {
		ret := 0
		for j := 1; j < n+1; j++ {
			if u.Same(i, j) {
				ret++
			}
		}
		ret -= f[i] + b[i] + 1
		fmt.Print(ret, " ")
	}
	fmt.Println()
}
