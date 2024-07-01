package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	h := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	dp := make([]float64, n)
	dp[0] = 0
	for i := 1; i < n; i++ {
		var min float64
		for j := 1; j <= k; j++ {
			if i-j < 0 {
				break
			}
			cost := dp[i-j] + math.Abs(h[i]-h[i-j])
			if j == 1 || cost < min {
				min = cost
			}
		}
		dp[i] = min
	}
	fmt.Println(int64(dp[n-1]))
}
