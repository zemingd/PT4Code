package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	A := make([]int, M)
	sum := 0
	for i := 0; i < M; i++ {
		fmt.Scan(&A[i])
		sum += A[i]
	}

	if sum <= N {
		fmt.Println(N - sum)
	} else {
		fmt.Println(-1)
	}

}
