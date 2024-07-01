package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

    heights := make([]int, N+200)
	for i := 0; i < N; i++ {
        fmt.Scanf("%d", &heights[i])
	}

	dp := make([]int, N+200)
    INF := 1 << 60
    for i, _ := range dp {
        dp[i] = INF
    }
    dp[0] = 0

    for i := 0; i < N; i++ {
        for j := 1; j < K+1; j++ {
            dp[i+j] = min(dp[i+j], dp[i] + abs(heights[i] - heights[i+j]))
        }
    }
    fmt.Println(dp[N-1])
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func abs(a int) int {
	if a > 0 {
		return a
	} else {
		return -1 * a
	}
}
