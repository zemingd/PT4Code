package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n, m, k := nextInt(), nextInt(), nextInt()

	uf := newUnionFind(n)

	friends := make([]int, n)
	for i := 0; i < m; i++ {
		a, b := nextInt()-1, nextInt()-1
		uf.unite(a, b)
		friends[a]++
		friends[b]++
	}

	blocks := make([]int, n)
	for i := 0; i < k; i++ {
		c, d := nextInt()-1, nextInt()-1
		if uf.same(c, d) {
			blocks[c]++
			blocks[d]++
		}
	}

	for i := 0; i < n; i++ {
		cnt := uf.size(i) - friends[i] - blocks[i] - 1
		fmt.Printf("%d ", cnt)
	}
	fmt.Println()
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
