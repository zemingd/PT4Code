package main

import (
	"fmt"
	"math"
)

func main() {
	var N, D int
	count := 0

	fmt.Scan(&N, &D)

	var X, Y float64

	for i := 0; i < N; i++ {
		fmt.Scan(&X, &Y)

		if math.Sqrt(X*X+Y*Y) <= float64(D) {
			count++
		}
	}
	fmt.Println(count)
}
