package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for B - Palace
	var N int
	fmt.Scanf("%d", &N)
	var T, A int
	fmt.Scanf("%d %d", &T, &A)

	var H int
	var flag float64 = 100000.0
	var answer int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &H)
		point := math.Abs(float64(A) - (float64(T) - float64(H)*0.006))
		if flag > point {
			flag = point
			answer = i + 1
		}
	}
	fmt.Println(answer)
}
