package main

import (
	"fmt"
)

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)
	cs := make([]int, n)
	as := make([][]int, n)
	for i := range cs {
		fmt.Scan(&cs[i])
		as[i] = make([]int, m)
		for j := range as[i] {
			fmt.Scan(&as[i][j])
		}
	}

	const inf = int(1e9)
	ans := inf
	for i := 0; i < 1<<uint(n); i++ {
		var cost int
		ls := make([]int, m)
		for j := 0; j < n; j++ {
			if 1<<uint(j)&i > 0 {
				cost += cs[j]
				for k := 0; k < m; k++ {
					ls[k] += as[j][k]
				}
			}
		}
		var ng bool
		for j := 0; j < m; j++ {
			if ls[j] < x {
				ng = true
			}
		}
		if !ng {
			ans = min(ans, cost)
		}
	}

	if ans == inf {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
