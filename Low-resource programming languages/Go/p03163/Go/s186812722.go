package main

import (
	"fmt"
)

func chmax(a *int, b int) {
	if *a < b {
		*a = b
	}
}

var dp [][]int

func main() {
	var N, W int
	fmt.Scan(&N, &W)
	w, v := make([]int, N), make([]int, N)
	for i := range w {
		fmt.Scan(&w[i], &v[i])
	}

	dp = make([][]int, N+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}

	for i := 0; i < N; i++ {
		for sumW := 0; sumW <= W; sumW++ {
			if sumW-w[i] >= 0 {
				chmax(&dp[i+1][sumW], dp[i][sumW-w[i]]+v[i])
			}
			chmax(&dp[i+1][sumW], dp[i][sumW])
		}
	}

	fmt.Println(dp[N][W])
}
