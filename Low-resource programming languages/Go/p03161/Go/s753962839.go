package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	hs := make([]int, N)
	for i := range hs {
		fmt.Scan(&hs[i])
	}

	dp := make([]int, N)

	for i := range dp {
		if i == 0 {
			continue
		}

		dp[i] = int(1e18)
	}

	for i := range hs {
		for k := 1; k <= K; k++ {
			if i+k >= N {
				break
			}

			cost := dp[i] + abs(hs[i]-hs[i+k])
			if cost < dp[i+k] {
				dp[i+k] = cost
			}
		}
	}

	fmt.Println(dp[N-1])
}

func abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}
