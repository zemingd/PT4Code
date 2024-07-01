package main

import (
	"fmt"
)

func main() {
	var A, B, K int
	fmt.Scanf("%d%d%d", &A, &B, &K)
	for i := A; i <= B; i++ {
		if i < A + K || i > B - K {
			fmt.Printf("%d\n", i)
		}
	}
	return
}
