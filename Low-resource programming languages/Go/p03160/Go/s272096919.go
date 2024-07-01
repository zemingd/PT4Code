package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)

	hs := make([]int, N+10)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &hs[i])
	}

	INF := 1 << 60
	dp := make([]int, N+10)
	dp[0] = 0
	for i := 1; i < N; i++ {
		dp[i] = INF
	}

	for i := 0; i < N; i++ {
		dp[i+1] = min(dp[i+1], dp[i]+abs(hs[i]-hs[i+1]))
		dp[i+2] = min(dp[i+2], dp[i]+abs(hs[i]-hs[i+2]))
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
