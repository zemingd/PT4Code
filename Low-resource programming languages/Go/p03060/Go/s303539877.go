package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	V := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		var v int
		fmt.Scan(&v)
		V[i] = v
	}
	for i := 0; i < N; i++ {
		var c int
		fmt.Scan(&c)
		C[i] = c
	}

	ans := 0
	for i := 0; i < N; i++ {
		if V[i] > C[i] {
			ans += V[i] - C[i]
		}
	}

	fmt.Println(ans)
}
