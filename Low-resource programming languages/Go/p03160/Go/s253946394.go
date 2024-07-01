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
	var dp[100001] float64
	dp[0] = 0
	for i := 0; i < n; i++ {
		for j := i + 1; j <= i + 2; j++ {
			if j > n - 1 {
				continue
			}
			if dp[j] == float64(0) || dp[i] + math.Abs(h[i] - h[j]) < dp[j] {
				dp[j] = dp[i] + math.Abs(h[i] - h[j])
			}
		}
	}
	ans := dp[n-1]
	fmt.Println(ans)
}