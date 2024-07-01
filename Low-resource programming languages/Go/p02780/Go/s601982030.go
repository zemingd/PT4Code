package main

import (
	"fmt"
)

func main() {
	// 5 3
	// 1 2 2 4 5
	var k, n int

	fmt.Scanf("%d %d\n", &k, &n)
	dp := make([]float64, k)
	p := make([]float64, k)
	for i := 0; i < k; i ++ {
		var v int
		fmt.Scanf("%d", &v)
      a := 0.5 * float64(v) + 0.5
		dp[i] = a
		p[i] = a
		if i > 0 {
			dp[i] += dp[i-1]
		}
		if i >= n {
			dp[i] -= p[i-n]
		}
	}
	max := 0.0
	for _, sum := range dp {
		if sum > max {
			max = sum
		}
	}
	
	fmt.Printf("%f", max)
	
}