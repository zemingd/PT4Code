package main

import (
	"fmt"
)

const (
	MaxN = 101
	MaxW = 100001
)

func main() {
	var N, W int
	fmt.Scan(&N, &W)

	w := make([]int, N)
	v := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&w[i], &v[i])
	}

	// dp[i][j]はi番目以降の品物から
	// 重さの和がj以下になるように選んだときの価値の和の最大値を表す
	var dp [MaxN][MaxW]int
	for i := 1; i < len(dp); i++ {
		dp[N][i] = 0
	}
	for i := N - 1; i >= 0; i-- {
		for j := 0; j <= W; j++ {
			// 容量が足りないため、i番目の品物を入れることができない
			if j < w[i] {
				dp[i][j] = dp[i+1][j]
			} else {
				// i番目の品物を入れるか入れないかで最大の方を選択
				dp[i][j] = maxInt(dp[i+1][j-w[i]]+v[i], dp[i+1][j])
			}
		}
	}
	fmt.Println(dp[0][W])
}

func maxInt(x, y int) int {
	if x > y {
		return x
	}
	return y
}
