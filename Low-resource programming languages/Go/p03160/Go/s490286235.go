package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)

	for i := range h {
		fmt.Scan(&h[i])
	}

	dp := make([]int, N)

	dp[1] = abs(h[1] - h[0])

	for i := 2; i < N; i++ {
		dp[i] = min(dp[i-1]+abs(h[i]-h[i-1]), dp[i-2]+abs(h[i]-h[i-2]))
		//fmt.Printf("dp[i]=%d", dp[i])
	}
	fmt.Print(dp[N-1])

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
