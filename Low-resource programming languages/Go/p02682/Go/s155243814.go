package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)
	if k <= a+b {
		fmt.Println(min(a, k))
	} else {
		fmt.Println(a - (k - a - b))
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
