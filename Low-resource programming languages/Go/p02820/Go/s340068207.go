package main

import "fmt"

func main() {
	var n, k int
	var r, s, p int
	var T string
	fmt.Scan(&n, &k)
	fmt.Scan(&r, &s, &p)
	fmt.Scan(&T)

	dp := make([][]int, n)
	for i := 0; i < n; i++ {
		dp[i] = make([]int, 3)
	}

	sum := 0
	for i := 0; i < k; i++ {
		var last int
		for j := i; j < n; j += k {
			// score
			if i != j {
				dp[j][0] = max(dp[j-k][1], dp[j-k][2])
				dp[j][1] = max(dp[j-k][2], dp[j-k][0])
				dp[j][2] = max(dp[j-k][0], dp[j-k][1])
			}
			switch T[j] {
			case 'r':
				dp[j][2] += p
			case 's':
				dp[j][0] += r
			case 'p':
				dp[j][1] += s
			}
			last = j
		}
		sum += max(dp[last][0], max(dp[last][1], dp[last][2]))
	}
	fmt.Println(sum)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
