package main

import (
	"fmt"
)

func main() {

	var A, B, C, K int
	fmt.Scanf("%d %d %d %d", &A, &B, &C, &K)

	var result int
	if A < K {
		if (A + B) < K {
			result = 1*A + 0*B + -1*(K-A-B)
		} else {
			result = 1*A + 0*(K-A)
		}
	} else {
		result = 1 * K
	}

	fmt.Println(result)
}
