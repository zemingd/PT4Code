package main

import (
	"fmt"
	"sort"
)

func main() {
	A := make([]int, 3)
	fmt.Scan(&A[0], &A[1], &A[2])

	sort.Ints(A)
	ans := A[2] - A[0]

	fmt.Println(ans)
}