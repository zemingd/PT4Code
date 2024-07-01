package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	x := make([]int, n)
	y := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&x[i], &y[i])
	}
	sd := float64(0)
	for i := 0; i < n - 1; i++ {
		for j := i + 1; j < n; j++ {
			dx := float64(x[j] - x[i])
			dy := float64(y[j] - y[i])
			sd += math.Sqrt(dx * dx + dy * dy)
		}
	}
	fmt.Println(sd * 2 / float64(n))
}
