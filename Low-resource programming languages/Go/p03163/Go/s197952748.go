package main

import (
	"fmt"
)

func main() {
	var n, W int
  	fmt.Scanf("%d%d", &n, &W)


	ws := make([]int, n)
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d%d", &ws[i], &vs[i])
	}

	dp := make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}

	for i := 1; i < n+1; i++ {
		for j := range dp[i-1] {
			if j-ws[i-1] >= 0 {
				dp[i][j] = max(dp[i][j], dp[i-1][j-ws[i-1]]+vs[i-1])
			}
			dp[i][j] = max(dp[i][j], dp[i-1][j])
		}
	}

	fmt.Println(dp[n][W])
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// -----------------------------------------
