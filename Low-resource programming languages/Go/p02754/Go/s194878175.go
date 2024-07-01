package main

import (
	"fmt"
)

func main() {
	var N, A, B int
	fmt.Scan(&N)
	fmt.Scan(&A)
	fmt.Scan(&B)
	if N < A+B {
		fmt.Println(A)
	} else {
		fmt.Println((N/(A+B))*A + N%(A+B))
	}
}
