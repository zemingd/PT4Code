package main

import (
	"fmt"
)

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C)
	if A < C {
		A, C = C, A
	}
	if A < B {
		A, B = B, A
	}
	fmt.Println(A*10 + B + C)
}
