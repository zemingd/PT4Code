package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	dp := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		dp[i] = make([]int, n+1)
	}

	ans := 0
	for i := n - 1; i >= 0; i-- {
		for j := n - 1; j >= 0; j-- {
			if s[i] == s[j] {
				l := dp[i+1][j+1] + 1
				dp[i][j] = l
				ans = max(ans, min(l, j-i))
			}
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
