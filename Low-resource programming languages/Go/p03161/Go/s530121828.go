package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
	}
	dp := make([]int, n)
	dp[0] = 0
	for i := 0; i < n - 1; i++ {
		dp[i + 1] = dp[i] + abs(arr[i + 1] - arr[i])
		for j := 1; j < k && i - j >= 0; j++ {
			dp[i + 1] = min1(dp[i + 1], dp[i - j] + abs(arr[i + 1] - arr[i - j]))
		}
	}
	fmt.Println(dp[len(dp) - 1])
}

func min1(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}