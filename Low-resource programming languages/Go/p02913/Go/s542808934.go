package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	dp := [5010][5010]int{}
	for i := n - 1; i >= 0; i-- {
		for j := n - 1; j >= 0; j-- {
			if s[i] == s[j] {
				dp[i][j] = dp[i+1][j+1] + 1
			}
		}
	}

	ans := 0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			c := dp[i][j]
			if i >= j || j+1 <= c {
				continue
			}
			ans = max(ans, c)
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
