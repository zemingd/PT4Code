package main

import "fmt"

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)

	c := make([][]int, n)
	var l, r int
	for i := 0; i < m; i++ {
		fmt.Scan(&l, &r)
		if c[l-1] == nil {
			c[l-1] = make([]int, n)
		}
		c[l-1][r-1]++
	}

	s := make([][]int, n)
	for i := 0; i < n; i++ {
		if c[i] == nil {
			continue
		}
		s[i] = make([]int, n+1)
		s[i][0] = 0
		for j := 0; j < n; j++ {
			s[i][j+1] = s[i][j] + c[i][j]
		}
	}

	var x int
	for i := 0; i < q; i++ {
		x = 0
		fmt.Scan(&l, &r)
		for j := l - 1; j < r; j++ {
			if s[j] == nil {
				continue
			}
			x += s[j][r] - s[j][l-1]
		}
		fmt.Println(x)
	}
}