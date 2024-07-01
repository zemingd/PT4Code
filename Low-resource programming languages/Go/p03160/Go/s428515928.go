package main

import (
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	dp := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	dp[0] = 0
	dp[1] = abs(h[0] - h[1])
	for i := 2; i < n; i++ {
		dp[i] = min(
			dp[i-2] + abs(h[i] - h[i-2]),
			dp[i-1] + abs(h[i] - h[i-1]))
	}
	fmt.Println(dp[n-1])
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}