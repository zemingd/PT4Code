package main

import (
	"fmt"
	"math"
)

func main(){
	var n int
	fmt.Scan(&n)
	h := make([]float64, n+2)
	dp := make([]float64, n+2)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	// 足場 i にいるとき
	// 最小コスト j
	dp[0] = 0
	for i := 1; i < len(dp); i++ {
		dp[i] = math.Pow(10, 9)
	}
	for i := 0; i < n; i++ {
		dp[i+1] = math.Min(dp[i+1], dp[i] + math.Abs(h[i] - h[i+1]))
		for j := i + 1; j <= i + 2; j++ {
			dp[j] = math.Min(dp[j], dp[i] + math.Abs(h[i] - h[j]))
		}
	}
	ans := dp[n-1]
	fmt.Println(ans)
}