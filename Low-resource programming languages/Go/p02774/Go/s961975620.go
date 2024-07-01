package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
	}
	sort.Ints(A)
	// fmt.Println(A)
	// i, j := 0, N-1
	// count := 0
	// for count < K {
	// 	if A[i+1]*A[j] > A[i]*A[j-1] {
	// 		j--
	// 	} else {
	// 		i++
	// 	}
	// 	count++
	// }
	// fmt.Println(A[i] * A[j])
	arr := make([]int, N*(N-1)/2)
	count := 0
	for i := 0; i < N; i++ {
		for j := 1; j < N; j++ {
			if i >= j {
				continue
			}
			arr[count] = A[i] * A[j]
			count++
		}
	}
	sort.Ints(arr)
	fmt.Println(arr[K-1])
}
