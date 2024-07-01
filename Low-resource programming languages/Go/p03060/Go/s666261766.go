package main

import (
	"fmt"
)

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	ans := 0
	for i := range v {
		ans += max(v[i]-c[i], 0)
	}
	fmt.Println(ans)
}
