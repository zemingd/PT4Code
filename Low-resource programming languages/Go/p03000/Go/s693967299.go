package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x int
	fmt.Scan(&n)
	fmt.Scan(&x)

	dp := make([]int, n+1)
	dp[0] = 0
	co := 1
	for index := 1; index <= n; index++ {
		var nn int
		fmt.Scan(&nn)
		dp[index] = dp[index-1] + nn

		if dp[index] <= x {
			co++
		}
	}

	fmt.Println(co)

}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
