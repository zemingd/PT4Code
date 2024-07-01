package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var h, dp []int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		h = append(h, tmp)
	}
	for i := 0; i < n; i++ {
		dp = append(dp, math.MaxInt64)
	}
	dp[0], dp[1] = 0, abs(h[1]-h[0])
	for i := 2; i < n; i++ {
		dp[i] = min(dp[i-1]+abs(h[i]-h[i-1]), dp[i-2]+abs(h[i]-h[i-2]))
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
