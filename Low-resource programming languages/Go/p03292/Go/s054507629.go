package main

import (
	"fmt"
	"sort"
)

func main() {
	A := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&A[i])
	}
	sort.Ints(A)
	ans := (A[2] - A[1]) + (A[1] - A[0])
	fmt.Println(ans)
}
