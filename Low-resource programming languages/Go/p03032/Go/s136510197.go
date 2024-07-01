package main

import (
    "fmt"
    "sort"
)

var n, k int
var vs []int

func main() {
    fmt.Scan(&n, &k)
    vs = make([]int, n)
    for i := 0; i < n; i++ {
        var v int
        fmt.Scan(&v)
        vs[i] = v
    }

    var max int
    for l := 0; l <= min(n, k); l++ {
        for r := 0; r <= min(n-l, k-l); r++ {
            for d := 0; d <= min(l+r, k-l-r); d++ {
                s := calc(l, r, d)
                if s > max {
                    max = s
                }
            }
        }
    }

    fmt.Println(max)
}

func calc(l, r, d int) int {
    var s []int
    s = append(s, vs[:l]...)
    s = append(s, vs[n-r:]...)
    sort.Sort(sort.Reverse(sort.IntSlice(s)))
    var v int
    for i := 0; i < l+r-d; i++ {
        v += s[i]
    }
    return v
}

func min(a, b int) int {
    if a < b {
        return a
    }
    return b
}
