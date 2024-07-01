package main

import (
	"fmt"
	"math"
)

var (
	n int
	h []int
	dp []int
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
		var (
			c1, c2 int
		)
		c1 = solve(idx - 1) + int(math.Abs(float64(h[idx] - h[idx-1])))
		c2 = solve(idx - 2) + int(math.Abs(float64(h[idx] - h[idx-2])))

		dp[idx] = int(math.Min(float64(c1), float64(c2)))
	}

	return dp[idx]
}

func main() {
	fmt.Scan(&n)
	h = make([]int, n)
	dp = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	for i := 0; i < n; i++ {
		dp[i] = -1
	}

	//fmt.Println(h)

	var ans int = solve(n-1)
	fmt.Println(ans)
}