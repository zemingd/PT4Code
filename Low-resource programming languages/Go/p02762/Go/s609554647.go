package main

import (
	"fmt"
)

type UnionFind struct {
	root []int
	size []int
}

func NewUnionFind(x int) *UnionFind {
	u := UnionFind{make([]int, x), make([]int, x)}
	for i := 0; i < x; i++ {
		u.root[i] = i
		u.size[i] = 1
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
	if u.size[x] > u.size[y] {
		x, y = y, x
	}
	u.size[x] += u.size[y]
	u.root[y] = x
}

func (u UnionFind) Size(x int) int {
	return u.size[x]
}

func main() {
	var n, m, k int
	fmt.Scan(&n, &m, &k)

	f := make([]int, n+1)
	b := make([]int, n+1)
	u := NewUnionFind(n + 1)

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
		ret := u.Size(i) - f[i] - b[i] - 1
		fmt.Print(ret, " ")
	}
	fmt.Println()
}
