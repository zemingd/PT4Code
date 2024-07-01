package main

import (
  "fmt"
)

type UnionFind struct {
    par []int
}

/* コンストラクタ */
func newUnionFind(N int) *UnionFind {
    u := new(UnionFind)
    u.par = make([]int, N)
    for i := range u.par {
        u.par[i] = -1
    }
    return u
}

/* xの所属するグループを返す */
func (u UnionFind) root(x int) int {
    if u.par[x] < 0 {
        return x
    }
    u.par[x] = u.root(u.par[x])
    return u.par[x]
}

/* xの所属するグループ と yの所属するグループ を合体する */
func (u UnionFind) unite(x, y int) {
    xr := u.root(x)
    yr := u.root(y)
    if xr == yr {
        return
    }
    u.par[yr] += u.par[xr]
    u.par[xr] = yr
}

/* xとyが同じグループに所属するかどうかを返す */
func (u UnionFind) same(x, y int) bool {
    if u.root(x) == u.root(y) {
        return true
    }
    return false
}

/* xの所属するグループの木の大きさを返す */
func (u UnionFind) size(x int) int {
    return -u.par[u.root(x)]
}

func main() {
  var n, m, i int
  fmt.Scan(&n)
  fmt.Scan(&m)
  tree := newUnionFind(n)
  for i=0; i < m; i++ {
    var a, b int
    fmt.Scan(&a)
    fmt.Scan(&b)
    a -= 1
    b -= 1
    tree.unite(a, b)
  }
  var ans int = 0
  for i=0; i < n; i++ {
    if ans < tree.size(i) {
      ans = tree.size(i)
    }
  }
  fmt.Println(ans)
}
  