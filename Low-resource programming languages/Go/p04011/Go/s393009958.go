package main

import "fmt"

func main() {
	var N, K, X, Y int
	fmt.Scan(&N, &K, &X, &Y)

	if N <= K {
		fmt.Println(N * X)
	} else if N > K {
		fmt.Println(K*X + ((N - K) * Y))
	}
}
