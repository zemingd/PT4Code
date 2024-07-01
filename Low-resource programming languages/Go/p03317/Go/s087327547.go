package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	// A := make([]int, N)
	var min int
	for i := 0; i < N; i++ {
		var t int
		// fmt.Scan(&A[i])
		fmt.Scan(&t)
		if t == 1 {
			min = i
		}
	}
	fmt.Sprint(min)
	var c int
	if N == K {
		c = 1
	} else {
		c = N / (K - 1)
		if N%(K-1) != 0 {
			c++
		}
	}

	fmt.Print(c)
}