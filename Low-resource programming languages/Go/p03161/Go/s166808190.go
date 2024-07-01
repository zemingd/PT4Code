package main

import (
	"fmt"
	"math"
)

// 足場 i + 1 or i + 2

func main() {
	n := SingleInt()
	k := SingleInt()
	chs := make([]int, 0, n)
	for i := 0; i < n; i++ {
		chs = append(chs, SingleInt())
	}

	dp := make([]int, n, n)
	dp[0] = 0
	dp[1] = int(math.Abs(float64(chs[1] - chs[0])))
	for i := 2; i < n; i++ {
		cand := make([]int, 0, k)
		for j := 1; j <= k; j++ {
			if i-j >= 0 {
				cand = append(cand, dp[i-j]+int(math.Abs(float64(chs[i]-chs[i-j]))))
			}
		}
		dp[i] = Min(cand...)
	}

	fmt.Printf("%#v\n", dp[n-1])
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
