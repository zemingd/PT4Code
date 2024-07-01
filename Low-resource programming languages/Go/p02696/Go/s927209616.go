package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)
	x := min(b-1, n)
	fmt.Println(int(a*x/b) - a*int(x/b))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
