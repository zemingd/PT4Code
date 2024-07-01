package main

import (
	"fmt"
)

func chmax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func main() {
	var N, W int
	fmt.Scan(&N, &W)
	weight := make([]int, N)
	value := make([]int, W)
	for i := 0; i < N; i++ {
		fmt.Scan(&weight[i], &value[i])
	}

	dp := make([]int, W+1)

	for i := 0; i < N; i++ {
		for w := W; w >= 0; w-- {
			if w+weight[i] > W {
				continue
			}
			chmax(&dp[w+weight[i]], dp[w]+value[i])
		}
	}

	fmt.Println(dp[W])
}
