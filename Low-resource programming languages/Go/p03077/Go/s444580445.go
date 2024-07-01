package main

import (
	"fmt"
)

var (
	N, A, B, C, D, E int64
)

func Min(a ...int64) int64 {
	min := a[0]
	for _, aa := range a {
		if min > aa {
			min = aa
		}
	}
	return min
}

func main() {
	fmt.Scan(&N, &A, &B, &C, &D, &E)
	fmt.Println(N/Min(A, B, C, D, E) + 5)
}
