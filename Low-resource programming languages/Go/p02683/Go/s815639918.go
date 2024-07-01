package main

import (
	"fmt"
)

func main() {
	var N, M, X int
	fmt.Scan(&N, &M, &X)

	C := make([]int, N)
	A := make([][]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&C[i])
		A[i] = make([]int, M)
		for j := 0; j < M; j++ {
			fmt.Scan(&A[i][j])
		}
	}
	ams := int(1e5)
	for k := 0; k < 1<<uint(N); k++ {
		cost := 0
		tmpl := make([]int, M)
		for l := 0; l < N; l++ {
			if (k>>uint(l))&1 == 1 {
				cost += C[l]
				for p := 0; p < M; p++ {
					tmpl[p] += A[l][p]
				}
			}
		}
		flag := true
		for q := 0; q < M; q++ {
			if tmpl[q] < X {
				flag = false
			}
		}
		if flag {
			if cost < ams {
				ams = cost
			}
		}
	}
	if ams == int(1e5) {
		fmt.Println(-1)
	} else {
		fmt.Println(ams)
	}
}
