package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Minimization
	var N, K float64
	fmt.Scanf("%f %f", &N, &K)

	fmt.Println(math.Ceil((N - 1) / (K - 1)))
}
