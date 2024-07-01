package main

import (
	"fmt"
)

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	result := Match(N, A, B)
	fmt.Println(result)
}

func Match(N, A, B int) int {
	if diff := B - A; diff%2 == 0 {
		return diff / 2
	} else {
		if B <= N-B {
			return B - 1
		} else {
			return N - A
		}
	}
}
