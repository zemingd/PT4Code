package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	ans := 0
	for i := 1; i*i <= m; i++ {
		if m%i != 0 {
			continue
		}

		if i*n <= m {
			ans = max(ans, i)
		}

		j := m / i
		if j*n <= m {
			ans = max(ans, j)
		}
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
