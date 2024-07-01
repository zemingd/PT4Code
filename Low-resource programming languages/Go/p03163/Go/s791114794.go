package main

import (
    "fmt"
    "math"
)

func max(lhs, rhs int) int {
    return int(math.Max(float64(lhs), float64(rhs)))
}

func main() {
    var n, w int
    fmt.Scan(&n, &w)

    weights := make([]int, n)
    values  := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&weights[i], &values[i])
    }

    dp := make([][]int, n+1)
    for i := 0; i <= n; i++ {
        dp[i] = make([]int, w+1)
    }
    for i := 0; i < n; i++ {
        for j := 0; j <= w; j++ {
            if j >= weights[i] {
                dp[i+1][j] = max(dp[i+1][j], dp[i][j - weights[i]] + values[i])
            }
            dp[i+1][j] = max(dp[i][j], dp[i+1][j])
        }
    }
    fmt.Println(dp[n][w])
}
