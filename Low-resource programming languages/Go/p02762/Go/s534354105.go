package main

import "fmt"

// UnionFind is union find structure
type UnionFind struct {
	Par []int
}

// NewUnionFind generates a new union find
func NewUnionFind(n int) *UnionFind {
	uf := &UnionFind{make([]int, n)}
	for i := range uf.Par {
		uf.Par[i] = i
	}
	return uf
}

// Root searches the root of the arguement
func (uf *UnionFind) Root(x int) int {
	if x == uf.Par[x] {
		return x
	}
	uf.Par[x] = uf.Root(uf.Par[x]) // 経路圧縮
	return uf.Par[x]
}

// Unite unites two trees by adding one root to another
func (uf *UnionFind) Unite(x, y int) {
	rx := uf.Root(x)
	ry := uf.Root(y)
	if rx == ry {
		return
	}
	uf.Par[rx] = ry
}

// Same returns true when the two are in the same group
func (uf *UnionFind) Same(x, y int) bool {
	return uf.Root(x) == uf.Root(y)
}

type relation struct {
	first  int
	second int
}

func main() {
	var n, m, k int
	fmt.Scan(&n, &m, &k)
	uf := NewUnionFind(n)

	friends := make(map[relation]bool)
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		uf.Unite(a-1, b-1)
		friends[relation{a - 1, b - 1}] = true
		friends[relation{b - 1, a - 1}] = true
	}

	blocked := make(map[relation]bool)
	for i := 0; i < k; i++ {
		var c, d int
		fmt.Scan(&c, &d)
		blocked[relation{c - 1, d - 1}] = true
		blocked[relation{d - 1, c - 1}] = true
	}

	for i := 0; i < n; i++ {
		cnt := 0
		for j := 0; j < n; j++ {
			rel := relation{i, j}
			if i != j && !friends[rel] && !blocked[rel] && uf.Same(i, j) {
				cnt++
			}
		}
		fmt.Printf("%v ", cnt)
	}
	fmt.Println()
}
