package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(n, m, k int, ab, cd [][2]int) []int {
        deg := make([]int, n)
        to := make([][]int, n)
        for i := range to {
                to[i] = make([]int, 0, n)
        }
        // 友人集合を作る
        uf := NewUnionFind(n)
        for i := 0; i < m; i++ {
                a := ab[i][0] - 1
                b := ab[i][1] - 1
                deg[a]++
                deg[b]++
                uf.unite(a, b)
        }
        for i := 0; i < k; i++ {
                c := cd[i][0] - 1
                d := cd[i][1] - 1
                to[c] = append(to[c], d)
                to[d] = append(to[d], c)
        }
        out := make([]int, n)
        for i := 0; i < n; i++ {
                out[i] = uf.size(i) - 1 - deg[i]
                for _, u := range to[i] {
                        if uf.same(i, u) {
                                out[i]--
                        }
                }
        }
        return out
}

func main() {
        r := bufio.NewReader(os.Stdin)
        var n, m, k int
        fmt.Fscan(r, &n, &m, &k)
        ab := make([][2]int, m)
        for i := range ab {
                fmt.Fscan(r, &ab[i][0], &ab[i][1])
        }
        cd := make([][2]int, k)
        for i := range cd {
                fmt.Fscan(r, &cd[i][0], &cd[i][1])
        }
        for _, t := range solution(n, m, k, ab, cd) {
                fmt.Printf("%v ", t)
        }
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