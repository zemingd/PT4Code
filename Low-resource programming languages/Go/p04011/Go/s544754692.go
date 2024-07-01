package main

import (
	"fmt"
)

func main() {
	var N, K, X, Y int
	fmt.Scan(&N, &K, &X, &Y)
	fee := X*K + Y*(N-K)
	if N <= K {
		fee = X * N
	}
	fmt.Println(fee)
}
