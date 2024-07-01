package main

import (
	"fmt"
)

func main() {
	var A, B, K uint64
	fmt.Scanln(&A, &B, &K)

	if A+B <= K {
		fmt.Println(0, 0)
		return
	}

	if A < K {
		A = 0
		K = K - A
	} else if K <= A {
		A = A - K
		K = 0
		fmt.Println(A, B)
		return
	}

	if B < K {
		B = 0
		K = K - B
	} else if K <= B {
		B = B - K
		K = 0
		fmt.Println(A, B)
		return
	}

	fmt.Println(A, B)
}
