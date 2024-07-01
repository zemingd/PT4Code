package main

import (
	"fmt"
	"math"
)

func main() {
	INF := uint(100000)
	var N, K int
	fmt.Scan(&N)
	fmt.Scan(&K)
	H := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&(H[i]))
	}

	dp := make([]uint, N)
	for i := 0; i < N; i++ {
		dp[i] = INF
	}
	dp[0] = 0

	for i := 1; i < N; i++ {
		//dp[i] = (1..K).map{|k| i-k < 0 ? INF : dp[i-k] + (H[i] - H[i-k]).abs }.min
		value := INF
		for k := 1; k <= K; k++ {
			var tmp uint
			if i-k < 0 {
				tmp = INF
			} else {
				tmp = dp[i-k] + uint(math.Abs(float64(H[i]-H[i-k])))
			}

			if tmp < value {
				value = tmp
			}
		}
		dp[i] = value
	}

	fmt.Println(dp)
	fmt.Println(dp[N-1])
}
