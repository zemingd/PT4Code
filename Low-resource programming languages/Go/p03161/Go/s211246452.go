package main

import (
	"fmt"
	"math"
	"os"

	"github.com/raahii/algo"
)

func diff(a, b int) int {
	return int(math.Abs(float64(a - b)))
}

func main() {
	N, K := algo.ReadInt(os.Stdin), algo.ReadInt(os.Stdin)
	h := algo.ReadInts(os.Stdin, N)

	dp := make([]int, N)
	for i := 1; i < N; i++ {
		v := []int{}
		for j := 1; j < K+1; j++ {
			if i-j >= 0 {
				v = append(v, dp[i-j]+diff(h[i-j], h[i]))
			}
		}

		dp[i], _ = algo.MinInts(v)
	}

	fmt.Println(dp[N-1])
}