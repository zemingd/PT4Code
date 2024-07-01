package main

import (
	"fmt"
)

func main() {
	var A, B, K, N int
	fmt.Scan(&A, &B, &K)
	N = B - A + 1
	if 2*K >= N {
		for i := A; i <= B; i++ {
			fmt.Println(i)
		}
	} else {
		for i := A; i < A+K; i++ {
			fmt.Println(i)
		}
		for i := B - K + 1; i <= B; i++ {
			fmt.Println(i)
		}
	}
}
