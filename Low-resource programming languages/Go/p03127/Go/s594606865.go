package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	m := 1000000000000
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
		if A[i] < m {
			m = A[i]
		}
	}

	for {
		ok := true
		for i := 0; i < N; i++ {
			A[i] = A[i] % m
			if A[i] > 0 && A[i] < m {
				m = A[i]
				ok = false
			}
		}
		if ok {
			break
		}
	}
	fmt.Println(m)
}
