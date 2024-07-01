package main

import (
	"fmt"
)

func main() {
	var n, m, x, inf int
	fmt.Scan(&n, &m, &x)
	a := make([][]int, n)
	c := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&a[i][j])
		}
		inf += c[i]
	}
	inf++

	l := 1 << n
	ans := inf
	for i := 0; i <= l; i++ {
		cost := 0
		s := make([]int, m)
		for j := 0; j < n; j++ {
			if (i>>j)&1 == 1 {
				cost += c[j]
				for k := 0; k < m; k++ {
					s[k] += a[j][k]
				}
			}
		}

		for k := 0; k < m; k++ {
			if s[k] < x {
				cost = inf
			}
		}
		if ans > cost {
			ans = cost
		}
	}

	if ans == inf {
		ans = -1
	}
	fmt.Println(ans)
}
