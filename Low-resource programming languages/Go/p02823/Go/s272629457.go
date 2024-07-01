package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Table Tennis Training
	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)

	var min int
	if (B-A)%2 == 0 {
		fmt.Println((B - A) / 2)
	} else {
		min = int(math.Min(float64(A-1), float64(N-B)) + 1)
		fmt.Println(min + (B-A-1)/2)
	}
}
