package main

import (
	"fmt"
	"math"
)

func min(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m > v {
			m = v
		}
	}
	return m
}

func main() {
	// Code for D - Floor Function
	var A, B int
	var N int
	fmt.Scan(&A, &B, &N)

	i := min(B-1, N)
	fmt.Println(int(math.Ceil(float64((A*i)/B))) - A*int(math.Ceil(float64(i/B))))
}
