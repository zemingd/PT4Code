package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code for A - Maximize the Formula
	A := make([]int, 3)
	fmt.Scanf("%d %d %d", &A[0], &A[1], &A[2])

	sort.Ints(A)
	fmt.Println(A[2]*10 + A[0] + A[1])

}
