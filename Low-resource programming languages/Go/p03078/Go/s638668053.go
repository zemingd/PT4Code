package main

import (
	"fmt"
	"sort"
)

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func main() {
	var X, Y, Z, K int
	fmt.Scan(&X, &Y, &Z, &K)

	A := make([]int, X)
	for i := 0; i < X; i++ {
		fmt.Scan(&A[i])
	}
	B := make([]int, Y)
	for i := 0; i < Y; i++ {
		fmt.Scan(&B[i])
	}
	C := make([]int, Z)
	for i := 0; i < Z; i++ {
		fmt.Scan(&C[i])
	}

	D := make([]int, 0)
	for i := 0; i < X; i++ {
		for j := 0; j < Y; j++ {
			D = append(D, A[i]+B[j])
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(D)))

	E := make([]int, 0)
	for i := 0; i < Min(K, len(D)); i++ {
		for j := 0; j < Min(K, len(C)); j++ {
			E = append(E, D[i]+C[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(E)))

	for i := 0; i < K; i++ {
		fmt.Println(E[i])
	}
}
