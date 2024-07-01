package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Table Tennis Training
	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)

	var X, Y int
	if (B-A)%2 == 0 {
		fmt.Println(int((B - A) / 2))
	} else {
		X = (B-A-1)/2 + (A - 1) + 1
		Y = (B-A-1)/2 + (N - B) + 1
		min := int(math.Min(float64(X), float64(Y)))
		fmt.Println(int(min))
	}
}
