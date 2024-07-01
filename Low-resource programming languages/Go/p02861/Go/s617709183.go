package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	xs := make([]float64, n)
	ys := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&xs[i], &ys[i])
	}

	cal := 0.0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			cal += math.Hypot(xs[i]-xs[j], ys[i]-ys[j])
		}
	}

	ans := cal / float64(n)
	fmt.Println(ans)
}
