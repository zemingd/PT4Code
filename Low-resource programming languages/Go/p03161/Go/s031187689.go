package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	h := make([]int, N+K+10)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
	}

	dp := make([]int, N+K+10)
	for i := 1; i < N+K+10; i++ {
		dp[i] = 999999999
	}

	for i := 0; i < N-1; i++ {
		for j := 1; j <= K; j++ {
			dp[i+j] = min(dp[i+j], dp[i]+abs(h[i]-h[i+j]))
		}
	}

	fmt.Println(dp[N-1])
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
