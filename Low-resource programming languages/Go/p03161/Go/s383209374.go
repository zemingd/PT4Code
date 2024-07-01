package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &h[i])
	}
	answer := findMinCosts(h, k)
	fmt.Println(answer)
}

func findMinCosts(h []int, k int) int {
	var dp [1001]int
	unreachable := 100000000

	for i := 0; i < 1001; i++ {
		dp[i] = unreachable
	}

	dp[h[0]] = 0

	for i := 1; i < len(h); i++ {
		minCost := unreachable
		for j := 0; j < k && j < i; j++ {
			if abs(h[i]-h[i-j-1])+dp[h[i-j-1]] < minCost {
				minCost = abs(h[i]-h[i-j-1]) + dp[h[i-j-1]]
			}
		}
		dp[h[i]] = minCost
	}

	return dp[h[len(h)-1]]
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
