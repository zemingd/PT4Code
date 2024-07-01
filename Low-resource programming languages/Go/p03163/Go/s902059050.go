package main

import (
	"fmt"
)

func main() {
	var N, W int
	fmt.Scanf("%d %d", &N, &W)

	type Item struct {
		w, v int
	}

	items := make([]Item, N)

	for i := range items {
		var item Item
		fmt.Scanf("%d %d", &item.w, &item.v)
		items[i] = item
	}

	// i 番目までの品物のみで重さが W 以下となる場合の価値の最大値
	dp := make([][]int, N+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}

	for i := 0; i < N; i++ {
		item := items[i]

		for w := 0; w <= W; w++ {
			// i 番目を選ばない時
			dp[i+1][w] = max(dp[i+1][w], dp[i][w])

			// i 番目を選ぶ時
			if w-item.w >= 0 {
				dp[i+1][w] = max(dp[i+1][w], dp[i][w-item.w]+item.v)
			}
		}
	}

	fmt.Println(dp[N][W])
}

func max(a, b int) int {
	if a > b {
		return a
	}

	return b
}
