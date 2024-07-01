package main

import (
	"fmt"
	"math"
)

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func main() {
	var n, W int
	fmt.Scan(&n, &W)
	w := make([]int, n)
	v := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i], &v[i])
	}
	dp := make([][]int, n+1)
	dp[0] = make([]int, W+1)

	// solve
	for i := 0; i < n; i++ {
		dp[i+1] = make([]int, W+1)

		for j := 1; j <= W; j++ {
			if j-w[i] >= 0 {
				dp[i+1][j] = max(dp[i+1][j], dp[i][j-w[i]]+v[i])
			}
			dp[i+1][j] = max(dp[i+1][j], dp[i][j])
		}
	}
	fmt.Println(dp[n][W])
}
