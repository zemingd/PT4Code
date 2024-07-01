package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	if 2*K >= B+1-A {
		for i := A; i < B+1; i++ {
			fmt.Println(i)
		}
	} else {
		for i := A; i < A+K; i++ {
			fmt.Println(i)
		}
		for i := B + 1 - K; i < B+1; i++ {
			fmt.Println(i)
		}
	}
}
