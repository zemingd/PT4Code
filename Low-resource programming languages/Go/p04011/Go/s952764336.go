package main

import "fmt"

func main() {
	var N, K, X, Y int
	fmt.Scan(&N)
	fmt.Scan(&K)
	fmt.Scan(&X)
	fmt.Scan(&Y)
	if N > K {
		fmt.Println(K*X + (N-K)*Y)
	} else {
		fmt.Println(N * X)
	}
}
