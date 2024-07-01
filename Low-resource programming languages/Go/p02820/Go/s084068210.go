package main

import "fmt"

func main() {
	var n, k int
	var r, s, p int
	var T string
	fmt.Scan(&n, &k)
	fmt.Scan(&r, &s, &p)
	fmt.Scan(&T)

	dp := make([][]int, 3)
	for i := 0; i < 3; i++ {
		dp[i] = make([]int, n)
	}

	sum := 0
	for i := 0; i < k; i++ {
		var last int
		for j := i; j < n; j += k {
			// score
			if i != j {
				dp[0][j] = max(dp[1][j-k], dp[2][j-k])
				dp[1][j] = max(dp[2][j-k], dp[0][j-k])
				dp[2][j] = max(dp[0][j-k], dp[1][j-k])
			}
			switch T[j] {
			case 'r':
				dp[2][j] += p
			case 's':
				dp[0][j] += r
			case 'p':
				dp[1][j] += s
			}
			last = j
		}
		sum += max(dp[0][last], max(dp[1][last], dp[2][last]))
	}
	fmt.Println(sum)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
