package main

import (
	"fmt"
	"sort"
)

type ab struct {
	a int
	b int
}
type abArray []ab

type UnionFind struct {
	par []int
}

func newUnionFind(N int) *UnionFind {
	u := new(UnionFind)
	u.par = make([]int, N)
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
	xr := u.root(x)
	yr := u.root(y)
	if xr == yr {
		return
	}
	u.par[yr] = xr
}

func (u UnionFind) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

func (a abArray) Len() int { return len(a) }
func (a abArray) Less(i, j int) bool {
	if a[i].b == a[j].b {
		return a[i].a > a[j].a
	}
	return a[i].b > a[j].b
}
func (a abArray) Swap(i, j int) { a[i], a[j] = a[j], a[i] }

func main() {
	var (
		n, m int
	)
	fmt.Scan(&n, &m)
	as := make(abArray, n)
	ts := make([]bool, m)
	u := newUnionFind(m)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i].a)
		fmt.Scan(&as[i].b)
	}
	sort.Sort(as)
	ret := int64(0)
	for i := 0; i < n; i++ {
		a := as[i].a - 1 + i
		if a >= m {
			continue
		}
		if ts[a] {
			a = u.root(a) - 1
		}
		if a < 0 {
			continue
		}
		ts[a] = true
		if a > 0 && ts[a-1] {
			u.unite(a-1, a)
		}
		if a < m-1 && ts[a+1] {
			u.unite(a, a+1)
		}
		ret += int64(as[i].b)
	}
	fmt.Println(ret)
}
