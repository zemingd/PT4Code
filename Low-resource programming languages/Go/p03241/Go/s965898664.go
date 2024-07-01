package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	ans := -1
	for i := 1; i*i <= m; i++ {
		if m%i != 0 {
			continue
		}

		if i*n <= m && i > ans {
			ans = i
		}
		j := m / i
		if j*n <= m && j > ans {
			ans = j
		}
	}
	fmt.Println(ans)
}
