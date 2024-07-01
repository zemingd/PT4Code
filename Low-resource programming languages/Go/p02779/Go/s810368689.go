package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	for i := range A {
		fmt.Scan(&A[i])
	}
	sort.Slice(A, func(i, j int) bool { return A[i] < A[j] })
	for i := 1; i < N; i++ {
		if A[i] == A[i-1] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
