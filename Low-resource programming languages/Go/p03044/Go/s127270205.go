package main

import (
    "fmt"
)

var m map[int]map[int]bool
var cs []int
var chk map[int]bool

func main() {
    var n int
    fmt.Scan(&n)

    m = make(map[int]map[int]bool)
    cs = make([]int, n)
    chk = make(map[int]bool)

    for i := 0; i < n-1; i++ {
        var u, v, w int
        fmt.Scan(&u, &v, &w)
        u--
        v--
        if _, ok := m[u]; !ok {
            m[u] = make(map[int]bool)
        }
        m[u][v] = w%2 == 0
        if _, ok := m[v]; !ok {
            m[v] = make(map[int]bool)
        }
        m[v][u] = w%2 == 0
    }

    search(0, 0)

    for i := range cs {
        fmt.Println(cs[i])
    }
}

func search(pos int, clr int) {
    if b, ok := chk[pos]; ok && b {
        return
    }
    cs[pos] = clr
    chk[pos] = true
    for k, v := range m[pos] {
        if v {
            search(k, clr)
        } else {
            search(k, 1-clr)
        }
    }
    return
}
