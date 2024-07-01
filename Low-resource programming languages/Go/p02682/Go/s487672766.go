package main

import "fmt"

func main() {
	var A, B, C, K int
	fmt.Scan(&A, &B, &C, &K)
	if A >= K {
		fmt.Println(K)
	} else if A+B >= K {
		fmt.Println(A)
	} else {
		r := (K - (A + B))

		fmt.Println(A - r)
	}
}
