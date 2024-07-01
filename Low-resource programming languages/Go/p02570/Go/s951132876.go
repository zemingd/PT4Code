package main

import (
	"fmt"
)

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)

	if t >= (d+s-1)/s {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
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
