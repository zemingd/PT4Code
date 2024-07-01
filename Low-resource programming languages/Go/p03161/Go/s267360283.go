package main

import (
	"fmt"
	"math"
)



const (
	INF = 1000000000000000000
)

// 配るDP
func main() {

	var n, k int
	fmt.Scan(&n, &k)

	h := make([]int, n+10)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	dp := make([]int, n + 10)
	for i := 0; i <n ;i++ {
		dp[i] = INF
	}
	dp[0] = 0
	// dp[1] = abs(h[1] - h[0])
	// if n > 2 {
	// 	dp[2] = abs(h[0] - h[2])
	// }

	for i := 0; i < n; i++ {
		for j := 1 ; j <= k; j++ {
			if i + j  > n {
				break
			}
			dp[i+j] = min(dp[i+j], dp[i]+abs(h[i]-h[i+j]))
		}
	}
	fmt.Println(dp[n-1])
}

func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
