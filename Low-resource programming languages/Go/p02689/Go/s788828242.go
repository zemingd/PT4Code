package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	h := make([]int, n + 1)
	for i := 1; i <= n; i++ {
		fmt.Scan(&h[i])
	}
	a := make([]int, m + 1)
	b := make([]int, m + 1)
	for i := 1; i <= m; i++ {
		fmt.Scan(&a[i], &b[i])
	}
	hismax := make([]bool, n + 1)
	for i := 1; i <= n; i++ {
		hismax[i] = true
	}
	for i := 1; i <= m; i++ {
		if h[a[i]] <= h[b[i]] {
			hismax[a[i]] = false
		}
		if h[b[i]] <= h[a[i]] {
			hismax[b[i]] = false
		}
	}
	result := 0
	for i := 1; i <= n; i++ {
		if hismax[i] {
			result++
		}
	}
	fmt.Println(result)
}