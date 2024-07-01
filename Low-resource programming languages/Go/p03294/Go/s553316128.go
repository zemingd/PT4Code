package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	A := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&A[i])
	}

	answer := 0
	for i := 0; i < n; i++ {
		answer += (A[i] - 1)
	}

	fmt.Println(answer)
}
