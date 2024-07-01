package main

import (
	"fmt"
	"math"
)

func main() {
	var n, w int
	fmt.Scan(&n, &w)

	var ws, vs []int
	for i := 0; i < n; i++ {
		var ww, vv int
		fmt.Scan(&ww, &vv)
		ws = append(ws, ww)
		vs = append(vs, vv)
	}

	dp := make([][]int, n)
	for i := 0; i < n; i++ {
		dp[i] = make([]int, w+1)
	}

	for j := 0; j < w+1; j++ {
		if j >= ws[0] {
			dp[0][j] = vs[0]
		} else {
			dp[0][j] = 0
		}
	}

	for i := 1; i < n; i++ {
		for j := 0; j < w+1; j++ {
			if j - ws[i] >= 0 {
				dp[i][j] = int(math.Max(float64(dp[i-1][j]), float64(vs[i] + dp[i-1][j-ws[i]])))
			} else {
				dp[i][j] = dp[i-1][j]
			}
		}
	}

	fmt.Println(dp[n-1][w])
}