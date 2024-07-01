package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if (b-a)%2 == 0 {
		fmt.Println((b - a) / 2)
	} else {
		fmt.Println(min(a-1, n-b) + 1 + (b-a-1)/2)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
