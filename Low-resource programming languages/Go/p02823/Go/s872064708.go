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
	if A == B {
		return A
	}
	diff := A - B
	if diff < 0 {
		diff = diff * (-1)
	}
	if diff%2 == 0 && 0 < diff {
		return diff / 2
	} else if diff%2 != 0 && 0 < diff {
		return diff * 2
	}

	return diff
}
