package main

import (
	"fmt"
)

func chmax(a *int, b int) bool {
	if *a < b {
		(*a) = b
		return true
	}
	return false
}

func main() {
	var N, W int
	fmt.Scan(&N, &W)

	var weight = make([]int, N)
	var value = make([]int, N)

	for i := range weight {
		fmt.Scan(&weight[i], &value[i])
	}

	var dp = make([][]int, N+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}

	for i := range weight {
		for sum := 0; sum <= W; sum++ {
			if sum-weight[i] >= 0 {
				chmax(&dp[i+1][sum], dp[i][sum-weight[i]]+value[i])
			}
			chmax(&dp[i+1][sum], dp[i][sum])
		}
	}

	fmt.Println(dp[N][W])
}