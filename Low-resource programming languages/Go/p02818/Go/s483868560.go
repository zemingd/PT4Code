package main

import (
	"fmt"
)

func main() {
	var A, B, K int
	fmt.Scanln(&A, &B, &K)
	if A+B <= K {
		fmt.Println(0, 0)
		return
	}

	for i := 0; i < K; i++ {
		if 0 < A {
			A--
		} else if 0 < B {
			B--
		}
	}
	fmt.Println(A, B)
}
