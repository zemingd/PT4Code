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
		return 0
	}
	diff := B - A
	if diff%2 == 0 {
		return diff / 2
	} else {
		if 0 < diff {
			if B <= N-A {
				return B - 1
			}
			return N - A
		} else {
			if A <= N-B {
				return A - 1
			}
			return N - B
		}
	}
}
