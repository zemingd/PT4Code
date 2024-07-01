package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	w := make([]int, n)
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i])
	}
	var sum1 int
	var sum2 int
	a := make([]int, n)
	var r int
	for t := 1; t < n-1; t++ {
		for i := 0; i < t; i++ {
			sum1 += w[i]
		}
		for i := t; i < n; i++ {
			sum2 += w[i]
		}
		a[t-1] = abs(sum1 - sum2)
	}
	for i := 0; i < n-1; i++ {
		if a[i] < a[i+1] {
			r = a[i+1]
		}
	}
	fmt.Println(r)
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}
