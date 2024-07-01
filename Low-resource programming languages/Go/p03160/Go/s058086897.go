package main

import (
  "fmt"
)

func abs(a int) int {
	if (a < 0) {
		return -a
	}
	return a
}

func min(a, b int) int {
	if (a < b) {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	var a, dp [100001]int
	dp[0] = 0
	for i := 0; i < n; i++ {
		fmt.Scan(&(a[i]))
		if i > 0 {
			dp[i] = dp[i - 1] + abs(a[i] - a[i - 1])
		}
		if i > 1 {
			dp[i] = min(dp[i], dp[i - 2] + abs(a[i] - a[i - 2]))
		}
	}
	fmt.Println(dp[n-1])
}