package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)

	cs := make([]int, n)
	as := make([][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&cs[i])
		as[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&as[i][j])
		}
	}

	ans := int(1e18)
	for bit := 0; bit < (1 << n); bit++ {
		cost := 0
		mx := make([]int, m)
		for i := 0; i < n; i++ {
			if bit&(1<<uint(i)) > 0 {
				for j := 0; j < m; j++ {
					mx[j] += as[i][j]
				}
				cost += cs[i]
			}
		}
		ok := true
		for j := 0; j < m; j++ {
			if mx[j] < x {
				ok = false
			}
		}
		if ok {
			ans = min(ans, cost)
		}
	}

	if ans == 1e18 {
		ans = -1
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
