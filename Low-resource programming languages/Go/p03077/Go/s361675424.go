package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Five Transportations
	var N int
	fmt.Scanf("%d", &N)

	var A, B, C, D, E float64
	fmt.Scanf("%f\n%f\n%f\n%f\n%f", &A, &B, &C, &D, &E)

	var min int
	min = int(math.Min(A, math.Min(B, math.Min(C, math.Min(D, E)))))
	fmt.Println(int(math.Ceil(float64(N)/float64(min))) + 4)
}
