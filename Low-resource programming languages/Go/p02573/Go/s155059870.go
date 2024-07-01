package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

type UnionFind struct {
	par []int
}

func newUnionFind(n int) *UnionFind {
	u := new(UnionFind)
	u.par = make([]int, n)
	for i := range u.par {
		u.par[i] = -1
	}
	return u
}

func (u UnionFind) root(x int) int {
	if u.par[x] < 0 {
		return x
	}
	u.par[x] = u.root(u.par[x])
	return u.par[x]
}

func (u UnionFind) unite(x, y int) {
	rx := u.root(x)
	ry := u.root(y)
	if rx != ry {
		u.par[ry] += u.par[rx]
		u.par[rx] = ry
	}
}

func (u UnionFind) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

func (u UnionFind) size(x int) int {
	return -u.par[u.root(x)]
}

func main() {
	n, m := scanInt(), scanInt()

	u := newUnionFind(n)

	for i := 0; i < m; i++ {
		a, b := scanInt(), scanInt()
		u.unite(a-1, b-1)
	}

	var ans int
	for i := 0; i < n; i++ {
		ans = max(ans, u.size(i))
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
