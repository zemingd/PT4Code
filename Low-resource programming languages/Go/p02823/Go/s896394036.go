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
		if A-1 <= N-A-1 {
			return B - 1
		} else if N-A-1 < A-1 {
			return N - A - 1
		}
	}
	return -1
}
