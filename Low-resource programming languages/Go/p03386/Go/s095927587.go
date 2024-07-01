package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	po := false

	for i := 0; i < K; i++ {
		fmt.Println(A + i)
		if A+i == B {
			po = true
			break
		}
	}

	if po {
		return
	}
	for i := 0; i < K; i++ {
		fmt.Println(B - K + i)
	}
}
