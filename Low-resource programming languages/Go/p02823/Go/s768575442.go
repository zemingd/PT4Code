package main

import (
	"fmt"
)

func main() {
	var N, A, B int64
	fmt.Scan(&N, &A, &B)
	result := Match(N, A, B)
	fmt.Println(result)
}

func Match(N, A, B int64) int64 {
	if diff := B - A; diff%2 == 0 {
		return diff / 2
	} else {
		if A <= N-A {
			return B
		} else if N-A < A {
			return N - A
		}
	}
	return -1
}
