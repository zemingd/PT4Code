package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	x := make([]float64, N)
	y := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&x[i], &y[i])
	}
	sum := 0.
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			dx := x[i] - x[j]
			dy := y[i] - y[j]
			sum += math.Sqrt(dx*dx + dy*dy)
		}
	}
	fmt.Println(sum / float64(N) * 2.0)
}
