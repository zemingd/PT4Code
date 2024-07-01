package main

import (
	"fmt"
	"sort"
)

func main() {

	var N, K int
	fmt.Scanf("%d %d\n", &N, &K)

	A := make([]int, N)
	for i := 0; i < N; i ++ {
		var d int
		fmt.Scanf("%d", &d)
		A[i] = d
	}
	result := make([]int, 0, N*(N-1))
	for i := 0; i < len(A) - 1; i ++ {
		d := A[i]
		for j := i + 1; j < len(A); j ++ {
			result = append(result, d * A[j])
		}
	}

	sort.Ints(result)
	fmt.Println(result[K-1])
}