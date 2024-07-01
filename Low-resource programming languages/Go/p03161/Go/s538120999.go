package main

import (
    "fmt"
)

func main() {
    var n, k int
    fmt.Scan(&n, &k)
    hs := make([]int, n)
    for i := 0; i < n; i++ {
        var h int
        fmt.Scan(&h)
        hs[i] = h
    }

    dp := make([]int, n)
    dp[0] = 0
    for i := 1; i < n; i++ {
        dp[i] = 1e10
    }

    for i := 1; i < n; i++ {
        for j := 1; j <= min(k, i); j++ {
            dp[i] = min(dp[i], dp[i-j]+abs(hs[i]-hs[i-j]))
        }
    }

    fmt.Println(dp[n-1])
}

func min(a, b int) int {
    if a < b {
        return a
    }
    return b
}

func abs(n int) int {
    if n < 0 {
        return -n
    }
    return n
}
