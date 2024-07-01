package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Table Tennis Training
	var N, A, B float64
	fmt.Scanf("%f %f %f", &N, &A, &B)

	var ans float64
	if int(B-A)%2 == 0 {
		ans = float64(int(B-A) / 2)
	} else {
		X := float64(int(B-A-1)/2) + (A - 1) + 1
		Y := float64(int(B-A-1)/2) + (N - B) + 1
		ans = math.Min(X, Y)
	}

	fmt.Println(int(ans))
}
