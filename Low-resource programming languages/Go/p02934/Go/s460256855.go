package main

import (
	"fmt"
)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var n int
	fmt.Scan(&n)
	var s float64
	for i := 0; i < n; i++ {
		var t float64
		fmt.Scan(&t)
		s += 1.0 / t
	}
	fmt.Println(1.0 / s)
}
