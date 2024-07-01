package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B, M int
	fmt.Scan(&A, &B, &M)

	a := make([]int, A)
	for i := 0; i < A; i++ {
		fmt.Scan(&a[i])
	}

	b := make([]int, B)
	for i := 0; i < B; i++ {
		fmt.Scan(&b[i])
	}

	var ai, bi, c, min int
	for i := 0; i < M; i++ {
		fmt.Scan(&ai, &bi, &c)
		min = a[ai-1] + b[bi-1] - c
	}

	sort.Ints(a)
	sort.Ints(b)
	tmp := a[0] + b[0]
	if min > tmp {
		min = tmp
	}

	fmt.Println(min)
}
