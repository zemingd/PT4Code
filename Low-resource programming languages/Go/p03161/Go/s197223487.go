package main

import (
	"fmt"
	"math"
)

const INF = 1 << 29

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	dp := make([]int, n)
	dp[0] = 0
	for i := 1; i < n; i++ {
		dp[i] = INF
	}

	for i := 0; i < n-1; i++ {
		for j := 1; j <= k; j++ {
			if i+j > n-1 {
				break
			}

			cost := dp[i] + abs(h[i]-h[i+j])
			if cost < dp[i+j] {
				dp[i+j] = cost
			}
		}
	}
	fmt.Println(dp[n-1])
}
