package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	q := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		fmt.Scan(&q[i])
	}

	dp := make([][][]int, m+1)
	for i := 0; i < m+1; i++ {
		dp[i] = make([][]int, n+1)
		for j := 0; j < n + 1; j++ {
			dp[i][j] = make([]int, n+1)
		}
	}

	for i := 1; i < m+1; i++ {
		for j := 1; j < n+1; j++ {
			for k := n; k > j; k-- {
				results := []int{}
				if i >= 2 {
					if j > 1 {
						results = append(results, dp[i-2][j-1][k] + q[j-1])
					}
					if k < n {
						results = append(results, dp[i-2][j][k+1] + q[k+1])
					}
				} 
				if j > 1 {
					results = append(results, dp[i-1][j-1][k] + q[j-1])
				}
				if k < n {
					results = append(results, dp[i-1][j][k+1] + q[k+1])
				}
				dp[i][j][k] = maxN(results...)
			}
		}
	}

	var result int
	for i := 1; i < m+1; i++ {
		for j := 1; j < n+1; j++ {
			for k := n; k > j; k-- {
				result = max(result, dp[i][j][k])
			}
		}
	}
	fmt.Println(result)
}


func maxN(l... int) int {
	if len(l) == 0 {
		return 0
	}
	if len(l) == 1 {
		return l[0]
	}
	m := l[0]
	for _, i := range l[1:] {
		m = max(m, i)
	}
	return m
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
