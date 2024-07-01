package main

import (
	"fmt"
	"math"
)

var (
	n, k  int
	h, dp []int
)

func main() {
	fmt.Scan(&n, &k)

	h = make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	dp = make([]int, n)
	for i := range dp {
		dp[i] = -1
	}

	fmt.Println(recDp(n - 1))
}

func recDp(i int) int {
	if i == 0 {
		return 0
	}
	if dp[i] != -1 {
		return dp[i]
	}
	res := math.MaxInt64
	for j := range make([]struct{}, k) {
		if i-j-1 >= 0 {
			res = min(res, recDp(i-j-1)+abs(h[i]-h[i-j-1]))
		}
	}
	dp[i] = res
	return res
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
