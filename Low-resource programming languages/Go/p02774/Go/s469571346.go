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
  arr := make([]int, 2)
	result := rec(arr, A, 0, 0, 2)

	sort.Ints(result)
	fmt.Println(result[K-1])
}

func rec(arr, A []int, pos, n, N int) []int{
	result := make([]int, 0, N*(N-1))
	if n >= N {
		result = append(result, arr[0]*arr[1])
		return result
	}
	for i := pos; i < len(A); i ++ {
	   arr[n] = A[i]
       result = append(result, rec(arr, A, i+1, n+1, N)...)
	}
  return result
}

