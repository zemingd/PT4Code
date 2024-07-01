package main

import (
	"fmt"
)

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)

	for i := A; i <= min(A+K-1, B); i++ {
		fmt.Println(i)
	}
	for i := max(B-(K-1), A+K); i <= B; i++ {
		fmt.Println(i)
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
