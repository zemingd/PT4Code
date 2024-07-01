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
	N := algo.ReadInt(os.Stdin)
	h := algo.ReadInts(os.Stdin, N)

	dp := make([]int, N)
	dp[0], dp[1] = 0, diff(h[0], h[1])
	for i := 2; i < N; i++ {
		dp[i], _ = algo.MinInts([]int{
			dp[i-1] + diff(h[i-1], h[i]),
			dp[i-2] + diff(h[i-2], h[i]),
		})
	}

	fmt.Println(dp[N-1])
}