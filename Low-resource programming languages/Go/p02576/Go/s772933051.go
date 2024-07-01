package main

import (
	"fmt"
)

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)
	fmt.Println((n + x - 1) / x * t)
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
