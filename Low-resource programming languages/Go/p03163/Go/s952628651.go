package main

import (
	"fmt"
)

func main() {
	var N, W int
	fmt.Scan(&N, &W)

	weight := make([]int, N)
	value := make([]int64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&weight[i], &value[i])
	}

	dp := make([][]int64, 1+N)
	for i := 0; i <= N; i++ {
		dp[i] = make([]int64, 1+W)
	}

	for i := 0; i < N; i++ {
		for w := 0; w <= W; w++ {
			if dp[i+1][w] < dp[i][w] {
				dp[i+1][w] = dp[i][w]
			}
			if w+weight[i] <= W && dp[i+1][w+weight[i]] < dp[i][w]+value[i] {
				dp[i+1][w+weight[i]] = dp[i][w] + value[i]
			}
		}
	}

	fmt.Println(dp[N][W])
}
