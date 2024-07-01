package main

import (
	"fmt"
	"math"
)

func main() {
	var N, idx int
	var A, T, H, min float64
	fmt.Scan(&N, &T, &A)
	min = 99999
	for i := 0; i < N; i++ {
		fmt.Scan(&H)
		w := math.Abs(A - (T - H*0.006))
		if w < min {
			min = w
			idx = i
		}
	}
	fmt.Println(idx + 1)
}