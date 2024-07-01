package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var N int
	fmt.Scan(&N)

	A := make([]int, N+1)
	B := make([]int, N)
	for i := 0; i < N+1; i++ {
		fmt.Scan(&A[i])
	}

	c := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&B[i])

		m := min(A[i], B[i])
		A[i] -= m
		B[i] -= m
		c += m

		m = min(A[i+1], B[i])
		A[i+1] -= m
		c += m
	}
	fmt.Println(c)
}
