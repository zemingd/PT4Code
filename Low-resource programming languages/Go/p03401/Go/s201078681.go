package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N+2)
	sum := 0
	for i := 1; i <= N; i++ {
		fmt.Scan(&A[i])
		sum += abs(A[i-1] - A[i])
	}
	sum += abs(A[N] - 0)

	for i := 1; i <= N; i++ {
		l := sum - abs(A[i-1]-A[i]) - abs(A[i]-A[i+1]) + abs(A[i-1]-A[i+1])
		fmt.Println(l)
	}

}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
