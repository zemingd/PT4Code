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
		fmt.Println(min(b-1, n-a))
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
