package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	ys := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i], &ys[i])
	}

	var sum float64
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			xd := xs[i] - xs[j]
			yd := ys[i] - ys[j]
			d := math.Sqrt(float64(xd*xd + yd*yd))
			sum += d
		}
	}

	fmt.Println(sum * 2 / float64(n))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
