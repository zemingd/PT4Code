package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)
	dp := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
		dp[i] = 9999999999999
	}

	dp[0] = 0
	for i := 1; i < N; i++ {
		dp[i] = min(dp[i], dp[i-1]+abs(h[i]-h[i-1]))
		if i > 1 {
			dp[i] = min(dp[i], dp[i-2]+abs(h[i]-h[i-2]))
		}
	}

	fmt.Println(dp[N-1])
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
