package main

import (
	"fmt"
)

func max(a, b, c int) int {
	if a <= b {
		if b <= c {
			return c
		}
		return b
	}
	if a <= c {
		return c
	}
	return a
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(max(a+b, a-b, a*b))
}
