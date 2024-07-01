package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	h := make([]int, 100100)
	dp := make([]int, 100100)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
	}

	for i := 0; i < 100100; i++ {
		dp[i] = math.MaxInt64
	}
	dp[0] = 0

	for i := 0; i < N; i++ {
		for j := 1; j <= K; j++ {
			dp[i+j] = Min(dp[i+j], dp[i]+Abs(h[i]-h[i+j]))
		}
	}
	fmt.Println(dp[N-1])
}
func Abs(a int) int {
	return int(math.Abs(float64(a)))
}
func Min(a, b int) int {
	if b < a {
		return b
	}
	return a
}
