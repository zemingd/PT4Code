package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	if k >= a {
		fmt.Printf("%d %d\n", 0, max(0, b-(k-a)))
	} else {
		fmt.Printf("%d %d\n", a-k, max(0, b-(k-a)))
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
