package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	if A*N < B {
		fmt.Println(A * N)
	} else {
		fmt.Println(B)
	}
}
