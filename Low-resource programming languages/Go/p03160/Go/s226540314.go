package main

import (
	"fmt"
)

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)
	dp := make([]int, N)
	for n := 0; n < N; n++ {
		fmt.Scan(&h[n])
	}
	for i := range dp {
		h1 := max(i-1, 0)
		h2 := max(i-2, 0)
		dp[i] = min(dp[h1]+abs(h[i]-h[h1]), dp[h2]+abs(h[i]-h[h2]))
	}
	fmt.Println(dp[N-1])
}
