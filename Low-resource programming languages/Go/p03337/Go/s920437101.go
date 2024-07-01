package main

import (
	"fmt"
)

// 2018-07-28T19:39:48+0800

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var A, B int
	fmt.Scanf("%d%d", &A, &B)
	fmt.Printf("%d", max(A*B, max(A+B, A-B)))
}