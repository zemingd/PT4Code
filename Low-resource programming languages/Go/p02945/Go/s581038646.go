package main

import (
	"fmt"
)

func main() {
	var a, b float64
	c := make([]float64, 3)

	fmt.Scan(&a, &b)
	c[0] = a + b
	c[1] = a - b
	c[2] = a * b

	fmt.Println(max(c))
}

func max(a []float64) float64 {
	max := a[0]
	for _, i := range a {
		if i > max {
			max = i
		}
	}
	return max
}
