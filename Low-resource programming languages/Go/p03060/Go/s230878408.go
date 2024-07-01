package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	V := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &V[i])
	}

	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &C[i])
	}

	var max int = 0
	for i := 0; i < N; i++ {
		if V[i] > C[i] {
			max += V[i] - C[i]
		}

	}
	fmt.Println(max)
}
