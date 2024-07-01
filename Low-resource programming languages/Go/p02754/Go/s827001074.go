package main

import (
	"fmt"
)

func main() {

	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)

	var countA, countB, countResult int
	for i := 0; i < N; i++ {

		if countA < A {
			countA++
			countResult++
		} else if countA == A && countB < B {
			countB++
		}

		if countA == A && countB == B {
			countA = 0
			countB = 0
		}

	}

	fmt.Println(countResult)
}
