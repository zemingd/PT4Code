package main

import (
	"fmt"
)

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C)

	a := abs(A-B) + abs(B-C)
	b := abs(A-C) + abs(C-B)
	c := abs(A-B) + abs(A-C)
	fmt.Println(min(min(a, b), c))
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
