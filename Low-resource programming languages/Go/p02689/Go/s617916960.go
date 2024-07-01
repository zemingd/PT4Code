package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	H := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &H[i])
	}

	var A, B int
	J := make([][]int, N)
	for i := 0; i < M; i++ {
		fmt.Scanf("%d %d", &A, &B)
		J[A-1] = append(J[A-1], B)
		J[B-1] = append(J[B-1], A)
	}

	var count, flag int
	for i := 0; i < N; i++ {
		flag = 0
		for k := 0; k < len(J[i]); k++ {
			if H[i] <= H[(J[i][k]-1)] {
				flag = 1
				break
			}
		}
		if flag == 0 {
			count++
		}
	}

	fmt.Println(count)
}
