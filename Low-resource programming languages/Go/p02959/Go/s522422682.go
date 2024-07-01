package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scanln(&n)
	a := make([]int, n+1)
	b := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	ans := 0
	for i := 0; i < n; i++ {
		l := min(a[i], b[i])
		ans += l
		a[i] -= l
		b[i] -= l
		r := min(b[i], a[i+1])
		ans += r
		b[i] -= r
		a[i+1] -= r
	}
	fmt.Println(ans)
}
