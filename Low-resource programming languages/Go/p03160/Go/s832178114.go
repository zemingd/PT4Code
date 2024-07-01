package main

import (
	"fmt"
	"math"
)

// 貰うDP(動的計画法)

func main() {

	var n int
	fmt.Scan(&n)

	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	dp := make([]int, 100010)
	dp[1] = abs(h[1] - h[0])
	// 初期化(最小化問題なのでINF尼初期化)
	for i := 2; i < n; i++ {
		dp[i] = abs(h[1] - h[0])

		b1:= dp[i-1] + abs(h[i] - h[i-1])
		b2 := dp[i-2] + abs(h[i] - h[i-2])
		if b1 < b2 {
			dp[i] = b1
		} else {
			dp[i] = b2
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
