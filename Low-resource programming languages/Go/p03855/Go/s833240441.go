package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n, k, l int
	fmt.Fscan(r, &n)
	fmt.Fscan(r, &k)
	fmt.Fscan(r, &l)

	ps := make([]int, k)
	qs := make([]int, k)
	for i := 0; i < k; i++ {
		fmt.Fscan(r, &ps[i])
		fmt.Fscan(r, &qs[i])
		ps[i]--
		qs[i]--
	}
	rs := make([]int, l)
	ss := make([]int, l)
	for i := 0; i < l; i++ {
		fmt.Fscan(r, &rs[i])
		fmt.Fscan(r, &ss[i])
		rs[i]--
		ss[i]--
	}

	// 道路での連結グループを作成
	roadConn := newUnionFind(n)
	for i := 0; i < k; i++ {
		roadConn.unite(ps[i], qs[i])
	}
	// 鉄道での連結グループを作成
	railConn := newUnionFind(n)
	for i := 0; i < l; i++ {
		railConn.unite(rs[i], ss[i])
	}

	// N個の都市で道路、鉄道両方でつながっている
	ans := make([]int, n)
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if roadConn.same(i, j) && railConn.same(i, j) {
				ans[i]++
			}
		}
	}

	wtr := bufio.NewWriter(os.Stdout)
	for i := 0; i < n; i++ {
		fmt.Fprintf(wtr, "%d ", ans[i])
	}
	wtr.Flush()
}

// Union-Find
type unionFind struct {
	d []int
}

func newUnionFind(n int) *unionFind {
	uf := new(unionFind)
	uf.d = make([]int, n)
	for i := 0; i < n; i++ {
		uf.d[i] = -1
	}
	return uf
}

func (uf unionFind) find(x int) int {
	if uf.d[x] < 0 {
		return x
	}
	uf.d[x] = uf.find(uf.d[x])
	return uf.d[x]
}

func (uf unionFind) unite(x, y int) bool {
	rootX := uf.find(x)
	rootY := uf.find(y)
	if rootX == rootY {
		return false
	}

	if uf.d[rootX] < uf.d[rootY] {
		uf.d[rootX] += uf.d[rootY]
		uf.d[rootY] = rootX
	} else {
		uf.d[rootY] += uf.d[rootX]
		uf.d[rootX] = rootY
	}

	return true
}

func (uf unionFind) same(x, y int) bool {
	return uf.find(x) == uf.find(y)
}

func (uf unionFind) size(x int) int {
	return -uf.d[uf.find(x)]
}

// Utility

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
