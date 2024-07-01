package main

import (
	"bufio"
"fmt"
	"math"
	"os"
"strconv"
)

// https://atcoder.jp/contests/abc177/editorial/90
// Union-Find

func main() {
	var n,m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	uf := newUnionFind(n)
	for i := 0; i < m; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		a--
		b--
		uf.unite(a,b)
	}

	ans := 0
	for i := 0; i < n;i++ {
		ans = max(ans, uf.size(i))
	}
	fmt.Println(ans)
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

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

// xの所属するグループを返す
func (u UnionFind) root(x int) int {
	if u.par[x] < 0 {
		return x
	}
	u.par[x] = u.root(u.par[x])
	return u.par[x]
}

// xの所属するグループ と yの所属するグループ をJoinする
func (u UnionFind) unite(x, y int) {
	xr := u.root(x)
	yr := u.root(y)
	if xr == yr {
		return
	}
	u.par[yr] += u.par[xr]
	u.par[xr] = yr
}

// xとyが同じグループに所属するかどうかを返す
func (u UnionFind) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

// xの所属するグループの木の大きさを返す
func (u UnionFind) size(x int) int {
	return -u.par[u.root(x)]
}
