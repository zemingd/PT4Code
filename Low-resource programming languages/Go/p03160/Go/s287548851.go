package main

import "fmt"

import "math"

func min(a int, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n+2)
	dp := make([]int, n+2)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	for i := 1; i < n; i++ {
		dp[i] = int(math.Pow(10, 9))
	}

	for i := 0; i < n-1; i++ {
		dp[i+1] = min(dp[i]+abs(h[i]-h[i+1]), dp[i+1])
		dp[i+2] = min(dp[i]+abs(h[i]-h[i+2]), dp[i+2])
	}

	fmt.Println(dp[n-1])
}
