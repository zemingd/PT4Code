package main

import (
	"fmt"
)

func main() {

	var N, X int
	fmt.Scanf("%d %d", &N, &X)

	L := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &L[i])
	}

	var count int = 1
	D := make([]int, N+1)
	D[1] = 0
	for i := 1; i < N+1; i++ {
		D[i] = D[i-1] + L[i-1]
		if X < D[i] {
			break
		}
		count++
	}

	fmt.Println(count)
}
