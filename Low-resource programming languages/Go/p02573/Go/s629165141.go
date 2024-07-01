package main

import (
        "fmt"
)

func solution(n, m int, ab [][2]int) int {
        // 友達集合を作る
        uf := NewUnionFind(n)
        for i := 0; i < m; i++ {
                a := ab[i][0] - 1
                b := ab[i][1] - 1
                uf.unite(a, b)
        }

        // 最大の友達集合を求める
        max := func(x, y int) int {
                if x > y {
                        return x
                }
                return y
        }
        out := 0
        for i := 0; i < n; i++ {
                out = max(out, uf.size(i))
        }
        return out
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        ab := make([][2]int, m)
        for i := range ab {
                fmt.Scan(&ab[i][0], &ab[i][1])
        }
        fmt.Println(solution(n, m, ab))
}

type UnionFind struct {
        d []int
}

func NewUnionFind(n int) *UnionFind {
        d := make([]int, n)
        for i := 0; i < n; i++ {
                d[i] = -1
        }
        return &UnionFind{d: d}
}

func (uf *UnionFind) find(x int) int {
        if uf.d[x] < 0 {
                return x
        }
        uf.d[x] = uf.find(uf.d[x])
        return uf.d[x]
}

func (uf *UnionFind) unite(x, y int) bool {
        x, y = uf.find(x), uf.find(y)
        if x == y {
                return false
        }
        if uf.d[x] > uf.d[y] {
                x, y = y, x
        }
        uf.d[x] += uf.d[y]
        uf.d[y] = x
        return true
}

func (uf *UnionFind) same(x, y int) bool {
        return uf.find(x) == uf.find(y)
}

func (uf *UnionFind) size(x int) int {
        return -uf.d[uf.find(x)]
}