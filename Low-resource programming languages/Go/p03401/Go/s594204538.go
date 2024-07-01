package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)
	A := make([]int, N + 2)
	full := 0
	for i := 1; i < N + 1; i++ {
		fmt.Scanf("%d", &A[i])
		full += abs(A[i - 1] - A[i])
	}
	full += abs(A[N] - A[N + 1])
	for i := 1; i < N + 1; i++ {
		fmt.Printf("%d\n", full - abs(A[i - 1] - A[i]) - abs(A[i] - A[i + 1]) + abs(A[i - 1] - A[i + 1]))
	}
	return
}

func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}
