package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	v1 := 0
	v2 := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
		if v2 < A[i] {
			v2 = A[i]
		}
		if v1 < v2 {
			v1, v2 = v2, v1
		}
	}

	for i := 0; i < N; i++ {
		if A[i] == v1 {
			fmt.Println(v2)
		} else {
			fmt.Println(v1)
		}
	}
}
