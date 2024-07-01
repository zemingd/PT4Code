package main

import (
	"fmt"
	"math"
	"os"
)

func main() {
	var n, k int
	fmt.Fscanf(os.Stdin, "%d %d", &n, &k)

	nums := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Fscanf(os.Stdin, "%d", &nums[i])
	}

	fmt.Println(Count(nums, k))
}

func Count(nums []int, K int) int {
	if len(nums) <= 1 {
		return 0
	}
	n := len(nums)

	dp := make([]int, n)

	dp[0] = 0
	dp[1] = abs(nums[1] - nums[0])

	for i := 2; i < n; i++ {
		m := math.MaxInt64
		for j:=1; j<=K && i-j >= 0; j++ {
			m = min(m, dp[i-j] + abs(nums[i-j] - nums[i]))
		}
		dp[i] = m
		// fmt.Println(dp[i])
	}

	return dp[n-1]
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}
