package main

import "fmt"

func main() {
	var N, W int
	fmt.Scan(&N, &W)
	w := make([]int, N)
	v := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&w[i], &v[i])
	}
	var dp [100][100010]int

	for i := 0; i < N; i++ {
		for j := 0; j <= W; j++ {
			if w[i] <= j {
				dp[i+1][j] = Max(dp[i][j], dp[i][j-w[i]]+v[i])
			} else {
				dp[i+1][j] = dp[i][j]
			}
		}
	}
	fmt.Println(dp[N][W])
}
func Max(a, b int) int {
	if b > a {
		return b
	}
	return a
}
