package main

import (
	"fmt"
	"math"
)

func main(){
	var n int
	fmt.Scan(&n)
	h := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	// 足場 i にいるとき
	// 最小コスト j
	var dp[100004] float64
	dp[0] = 0
	for i := 1; i < len(dp); i++ {
		dp[i] = math.MaxFloat64
	}
	for i := 0; i < n; i++ {
		for j := i + 1; j <= i + 2; j++ {
			if j > n - 1 {
				continue
			}
			dp[j] = math.Min(dp[j], dp[i] + math.Abs(h[i] - h[j]))
		}
	}
	ans := dp[n-1]
	fmt.Println(ans)
}