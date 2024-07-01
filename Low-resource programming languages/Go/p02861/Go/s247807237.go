package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]float64, n)
	y := make([]float64, n)
	for i:=0;i<len(x); i++{
		fmt.Scan(&x[i], &y[i])
	}

	sum := 0.0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			dx := x[i] - x[j]
			dy := y[i] - y[j]
			sum += math.Sqrt(dx*dx + dy*dy)
		}
	}
	fmt.Println(sum / float64(n) * 2.0)
}