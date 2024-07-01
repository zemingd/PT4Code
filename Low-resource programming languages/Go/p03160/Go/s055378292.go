package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	costs := ScanFloats(n)
	dp := make([]float64, n)
	dp[1] = math.Abs(costs[0] - costs[1])
	for i := 2; i < n; i++ {
		abs1 := math.Abs(costs[i-1] - costs[i])
		abs2 := math.Abs(costs[i-2] - costs[i])
		if dp[i-1]+abs1 < dp[i-2]+abs2 {
			dp[i] = dp[i-1] + abs1
		} else {
			dp[i] = dp[i-2] + abs2
		}
	}
	fmt.Println(int(dp[n-1]))
}

func ScanFloats(len int) (nums []float64) {
	var num float64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
