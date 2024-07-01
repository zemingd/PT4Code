package main

import (
    "fmt"
    "sort"
)

func main() {
    // init
    var N, W int
    fmt.Scan(&N, &W)

    // loop
    dp := make([]int, W + 1)
    for i := 1; i < N + 1; i++ {
        var w, v int
        fmt.Scan(&w, &v)
        dp_ := make([]int, W + 1)
        copy(dp_, dp)
        for j := 1; j < W + 1; j++ {
            if j + w > W{
                continue
            }
            if dp_[j] == 0 {
                continue
            }
            dp[j + w] = Max(dp_[j] + v, dp_[j + w])
        }
        dp[w] = Max(v, dp_[w])
    }

    // output
    sort.Sort(sort.IntSlice(dp))
    fmt.Println(dp[W])
}

func Max(x, y int) int {
    if x < y{
        return y
    }
    return x
}