package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scanf("%d %d %d", &A, &B, &K)

	if A >= K {
		A = A - K
	} else if B >= (K - A) {
		B = B - (K - A)
		A = 0
	} else {
		A = 0
		B = 0
	}

	fmt.Println(A, B)
}
