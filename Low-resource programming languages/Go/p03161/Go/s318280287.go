package main

import (
	"fmt"
	"math"
)

var (
	n, k int
	h, dp []int
)

func solve(idx int) int {
	if dp[idx] != -1 {
		return dp[idx]
	}

	if idx == 0 {
		dp[idx] = 0
	} else if idx == 1 {
		dp[idx] = int(math.Abs(float64(h[idx] - h[idx-1])))
	} else {
		var ans = int(math.Pow(10, 10))
		for i := 1; i <= k; i++ {
			if idx - i < 0 {
				break
			}
			var cost =  solve(idx - i) + int(math.Abs(float64(h[idx-i]-h[idx])))
			ans = int(math.Min(float64(ans), float64(cost)))
		}

		dp[idx] = ans
	}

	return dp[idx]
}

func main() {
	fmt.Scan(&n, &k)
	h = make([]int, n)
	dp = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	for i := 0; i < n; i++ {
		dp[i] = -1
	}

	//fmt.Println(h)

	fmt.Println(solve(n - 1))
}