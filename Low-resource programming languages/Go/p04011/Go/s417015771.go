package main

import "fmt"

func main() {
	// Code for A - Tak and Hotels (ABC Edit)
	var N, K, X, Y int
	fmt.Scanf("%d\n%d\n%d\n%d", &N, &K, &X, &Y)

	if K < N {
		fmt.Println(X*K + Y*(N-K))
	} else {
		fmt.Println(X * N)
	}
}
