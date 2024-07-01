package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var a, b, c float64
	fmt.Fscan(r, &a)
	fmt.Fscan(r, &b)
	fmt.Fscan(r, &c)

	x := big.NewFloat(a)
	y := big.NewFloat(b)
	z := big.NewFloat(c)
	xs := new(big.Float).SetPrec(1024).Sqrt(x)
	ys := new(big.Float).SetPrec(1024).Sqrt(y)
	zs := new(big.Float).SetPrec(1024).Sqrt(z)
	add := new(big.Float).SetPrec(1024).Add(xs, ys)

	if add.Cmp(zs) < 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
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
