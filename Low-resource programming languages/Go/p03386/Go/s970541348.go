package main

import (
	"fmt"
)

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	bp := B + 1

	n := (float64(B) - float64(A)) / 2
	if n > float64(K) {
		for i := A; i < A+K; i++ {
			fmt.Println(i)
		}
		for i := B - K + 1; i < bp; i++ {
			fmt.Println(i)
		}
		return
	}
	for i := A; i < bp; i++ {
		fmt.Println(i)
	}
}
