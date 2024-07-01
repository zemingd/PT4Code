package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	l := n / (a + b)
	fmt.Println(a*l + min(n-l*(a+b), a))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
