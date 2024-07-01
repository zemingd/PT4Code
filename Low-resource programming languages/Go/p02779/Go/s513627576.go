package main

import (
	"fmt"
	"sort"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
	}

	sort.Ints(A)
	var flag int = 0
	for i := 0; i < N-1; i++ {
		if A[i] == A[i+1] {
			flag = 1
		}
	}

	if flag == 1 {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
