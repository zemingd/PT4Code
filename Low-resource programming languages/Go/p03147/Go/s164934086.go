package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	ans := h[0]
	for i := 1; i < n; i++ {
		ans += max(h[i]-h[i-1], 0)
	}
	fmt.Println(ans)
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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
