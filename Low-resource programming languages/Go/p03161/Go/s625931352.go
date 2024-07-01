package main

import (
	"fmt"
)

const INF = 1 << 30

func main(){
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	dp := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	for i := 1; i < len(dp); i++ {
		dp[i] = INF
	}
	dp[0] = 0

	for i := 0; i < n-1; i++ {
		for j := i + 1; j <= i + k; j++ {
			if j > n - 1 {
				continue
			}
			dp[j] = min(dp[j], dp[i] + abs(h[i] - h[j]))
		}
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