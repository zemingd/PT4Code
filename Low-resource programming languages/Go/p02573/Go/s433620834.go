package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()

	uf := newUnionFind(n)
	for i := 0; i < m; i++ {
		a := nextInt() - 1
		b := nextInt() - 1
		uf.unite(a, b)
	}

	ans := 0
	for i := 0; i < n; i++ {
		ans = max(ans, uf.size(i))
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

// UnionFind .
type UnionFind struct {
	par   []int
	rank  []int
	sizes []int
}

func newUnionFind(n int) UnionFind {
	u := UnionFind{}
	u.par = make([]int, n)
	u.rank = make([]int, n)
	u.sizes = make([]int, n)
	for i := 0; i < n; i++ {
		u.par[i] = i
		u.rank[i] = 0
		u.sizes[i] = 1
	}
	return u
}

func (u UnionFind) unite(x, y int) {
	x = u.root(x)
	y = u.root(y)
	if x == y {
		return
	}

	if u.rank[x] < u.rank[y] {
		u.par[x] = y
		u.sizes[y] += u.sizes[x]
	} else {
		u.par[y] = x
		u.sizes[x] += u.sizes[y]
		if u.rank[x] == u.rank[y] {
			u.rank[x]++
		}
	}
}

func (u UnionFind) root(x int) int {
	if u.par[x] == x {
		return x
	}
	u.par[x] = u.root(u.par[x])
	return u.par[x]
}

func (u UnionFind) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

func (u UnionFind) size(x int) int {
	return u.sizes[u.root(x)]
}
