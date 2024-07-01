package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Add Sub Mul
	var A, B float64
	fmt.Scanf("%f %f", &A, &B)
	fmt.Println(int(math.Max(A+B, math.Max(A-B, A*B))))
}
