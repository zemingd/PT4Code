package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)

	if K <= A {
		fmt.Println(A-K, B)
	}
	if K <= A+B {
		fmt.Println(0, B+(A-K))
	}
	if A+B < K {
		fmt.Println(0, 0)
	}

}
