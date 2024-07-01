package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Table Tennis Training
	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)

	if (B-A)%2 == 0 {
		fmt.Println((B - A) / 2)
	} else {
		fmt.Println(math.Ceil(float64(B-A)/2) + 1)
	}
}
