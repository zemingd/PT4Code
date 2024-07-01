package main

import (
	"fmt"
)

func maxint(a int, b int) int {
	if a > b {
		return a
	}
	return b
}
func main() {
	prev := 0
	current := 1
	var n, limit, w, v int
	fmt.Scan(&n, &limit)
	var dp [][]int
	dp = append(dp, make([]int, limit+1))
	dp = append(dp, make([]int, limit+1))
	for i := 0; i < n; i++ {
		fmt.Scan(&w, &v)
		for j := 0; j < w; j++ {
			dp[current][j] = dp[prev][j]
		}
		for j := w; j <= limit; j++ {
			dp[current][j] = maxint(dp[prev][j-w]+v, dp[prev][j])
		}
		prev, current = current, prev
	}
	fmt.Println(dp[prev][limit])
}
