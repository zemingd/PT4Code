package main

import (
	"fmt"
)

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)
	if n%x == 0 {
		fmt.Println((n / x) * t)
	} else {
		fmt.Println((n/x + 1) * t)
	}
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
