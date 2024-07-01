package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	var h, dp []int
	fmt.Scanf("%d %d", &n, &k)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		h = append(h, tmp)
	}
	for i := 0; i < n; i++ {
		dp = append(dp, math.MaxInt64)
	}
	dp[0] = 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n && j <= i+k; j++ {
			tmp := dp[i] + abs(h[j]-h[i])
			if tmp < dp[j] {
				dp[j] = tmp
			}
		}
	}
	fmt.Println(dp[n-1])
}
func abs(in int) int {
	if in >= 0 {
		return in
	} else {
		return -in
	}
}
func min(a, b int) int {
	if a <= b {
		return a
	}
	return b
}
