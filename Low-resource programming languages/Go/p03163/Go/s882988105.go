package main

import "fmt"

// W ..
var W int

var v []int
var w []int
var dp [][]int

func main() {
	var N int
	fmt.Scan(&N, &W)
	w = make([]int, N)
	v = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&w[i], &v[i])
	}

	dp = make([][]int, N+1)
	for i := 0; i <= N; i++ {
		dp[i] = make([]int, 1000000)
	}

	fmt.Println(dfs(N, 0))
}

func dfs(i, sw int) int {
	if dp[i][sw] > 0 {
		return dp[i][sw]
	}

	if i == 0 {
		return 0
	}

	r := dfs(i-1, sw)
	if sw+w[i-1] <= W {
		r1 := dfs(i-1, sw+w[i-1]) + v[i-1]
		if r < r1 {
			r = r1
		}
	}

	dp[i][sw] = r
	return r
}
