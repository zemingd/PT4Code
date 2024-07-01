package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	arry := make([]float64, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&arry[i])
	}
	h := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	t := make([]float64, n)
	for i := 0; i < n; i++ {
		t[i] = math.Abs(arry[1] - 12 + h[i]*0.006)
	}
	var min float64 = 600
	var index = 0
	for i := 0; i < n; i++ {
		if min > t[i] {
			min = t[i]
			index = i + 1
		}
	}
	fmt.Println(index)
}
