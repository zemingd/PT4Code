package main

import (
	"fmt"
	)

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	mx := max(max(a - b, a + b), a * b)
	fmt.Println(mx)
}
