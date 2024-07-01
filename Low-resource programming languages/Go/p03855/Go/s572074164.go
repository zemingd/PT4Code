package main

import "fmt"

func main() {
	var n, k, l int
	fmt.Scan(&n, &k, &l)

	roads := newUnionFind(n)
	var p, q int
	for i := 0; i < k; i++ {
		fmt.Scan(&p, &q)
		roads.unite(p-1, q-1)
	}
	rails := newUnionFind(n)
	var r, s int
	for i := 0; i < l; i++ {
		fmt.Scan(&r, &s)
		rails.unite(r-1, s-1)
	}

	m := make(map[[2]int]int)
	for i := 0; i < n; i++ {
		key := [2]int{roads.root(i), rails.root(i)}
		m[key]++
	}

	for i := 0; i < n; i++ {
		key := [2]int{roads.root(i), rails.root(i)}
		if i < n-1 {
			fmt.Printf("%d ", m[key])
		} else {
			fmt.Println(m[key])
		}
	}
}

// UnionFind .
type UnionFind struct {
	par []int
}

func newUnionFind(n int) *UnionFind {
	u := new(UnionFind)
	u.par = make([]int, n)
	for i := range u.par {
		u.par[i] = i
	}
	return u
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

func (u UnionFind) unite(x, y int) {
	x = u.root(x)
	y = u.root(y)
	if x == y {
		return
	}
	u.par[x] = y
}
