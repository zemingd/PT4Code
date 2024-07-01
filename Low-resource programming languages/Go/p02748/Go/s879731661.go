package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var a, b, m int
	fmt.Fscan(r, &a)
	fmt.Fscan(r, &b)
	fmt.Fscan(r, &m)

	as := make([]int, a)
	minA := math.MaxInt64
	for i := 0; i < a; i++ {
		fmt.Fscan(r, &as[i])
		minA = min(minA, as[i])
	}
	bs := make([]int, b)
	minB := math.MaxInt64
	for i := 0; i < b; i++ {
		fmt.Fscan(r, &bs[i])
		minB = min(minB, bs[i])
	}

	var x, y, c int
	ans := minA + minB
	for i := 0; i < m; i++ {
		fmt.Fscan(r, &x)
		fmt.Fscan(r, &y)
		fmt.Fscan(r, &c)
		x--
		y--

		sum := as[x] + bs[y] - c
		ans = min(ans, sum)
	}

	fmt.Println(ans)
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

func (uf *unionFind) find(x int) int {
	if uf.d[x] < 0 {
		return x
	}
	uf.d[x] = uf.find(uf.d[x])
	return uf.d[x]
}

func (uf *unionFind) unite(x, y int) bool {
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

func (uf *unionFind) same(x, y int) bool {
	return uf.find(x) == uf.find(y)
}

func (uf *unionFind) size(x int) int {
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
