package main

import (
	"fmt"
)

func main() {
	var n, m, x, inf int
	fmt.Scan(&n, &m, &x)
	square := make([][]int, n)
	for i := 0; i < n; i++ {
		row := make([]int, m+1)
		for j := 0; j <= m; j++ {
			var tmp int
			fmt.Scan(&tmp)
			row[j] = tmp
			if j == 0 {
				inf += tmp
			}
		}
		square[i] = row
	}
	ans := inf
	max := 1 << n
	fmt.Print(max)
	for i := 1; i < max; i++ {
		cost := 0
		sum := make([]int, m)
		for j := 0; j < n; j++ {
			if (i>>j)&1 == 1 {
				cost += square[j][0]
				for k := 0; k < m; k++ {
					sum[k] += square[j][k+1]
				}
			}
			bl := false
			for k := 0; k < m; k++ {
				if sum[k] < x {
					bl = true
					break
				}
			}
			if bl == false {
				ans = intMin(ans, cost)
			}
		}
	}
	if ans == inf {
		fmt.Print(-1)
	} else {
		fmt.Print(ans)
	}
}

func intMin(a int, b int) int {
	if a < b {
		return a
	}
	return b
}
