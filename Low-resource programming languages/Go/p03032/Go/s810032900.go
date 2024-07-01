package main

import (
	"fmt"
)

func chmax(x *int64, y int64) bool {
	if *x < y {
		*x = y
		return true
	}
	return false
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	a := make([]int64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	dp := make([][][]int64, N+1)
	for i := 0; i <= N; i++ {
		dp[i] = make([][]int64, N+1)
		for j := 0; j <= N; j++ {
			dp[i][j] = make([]int64, K+2)
			for k := 0; k <= K+1; k++ {
				dp[i][j][k] = -1<<60
			}
		}
	}

	dp[0][0][0] = 0


	for i := 0; i <= N; i++ {
		for j := 0; j <= N; j++ {
			for k := 0; k < K; k++ {
				if i >= N-j {
					continue
				}
				if i < N {
					chmax(&dp[i+1][j][k+1], dp[i][j][k] + a[i])
					chmax(&dp[i+1][j][k+2], dp[i][j][k])
				}
				if j < N {
					chmax(&dp[i][j+1][k+1], dp[i][j][k] + a[N-1-j])
					chmax(&dp[i][j+1][k+2], dp[i][j][k])
				}
			}
		}
	}

	var ans int64 = 0

	for i := 0; i <= N; i++ {
		for j := 0; j <= N; j++ {
			for k := 0; k <= K; k++ {
				if i > N-j {
					continue
				}
				chmax(&ans, dp[i][j][k])
			}
		}
	}

	fmt.Println(ans)

}
