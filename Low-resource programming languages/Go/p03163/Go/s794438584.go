package main

import "fmt"
import "math"

func max(lhs, rhs int) int {
	return int(math.Max(float64(lhs), float64(rhs)))
}

func main() {
	var (
		N, M int
	)
	fmt.Scanf("%d %d", &N, &M)
	values := make([]int, N)
	weights := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &weights[i], &values[i])
	}
	//fmt.Println(N, M)
	//fmt.Println(values, weights)
	dp := make([][]int, N+1)
	for i := 0; i < N+1; i++ {
		dp[i] = make([]int, M+1)
	}
	for i := 1; i <= N; i++ {
		for j := 0; j <= M; j++ {
			dp[i][j] = dp[i-1][j]
			if j >= weights[i-1] {
				dp[i][j] = max(dp[i][j], dp[i-1][j-weights[i-1]]+values[i-1])
			}
		}
	}
	fmt.Println(dp[N][M])
}
