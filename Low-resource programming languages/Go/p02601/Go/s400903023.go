package main

import "fmt"

func main() {
	var A, B, C int
	var K int

	fmt.Scan(&A, &B, &C)
	fmt.Scan(&K)

	for i := 0; i < K; i++ {
		if C < B || C < A {
			C *= 2
		} else {
			B *= 2
		}
		if A < B && B < C {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
