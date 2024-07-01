package main

import (
	"fmt"
)

func main() {
	var N, T, A int
	fmt.Scan(&N, &T, &A)

	best := 0
	min_diff := 1000000000
	for i := 1; i < N+1; i++ {
		var h int
		fmt.Scan(&h)

		var diff int
		diff = abs((T*1000 - h*6) - A*1000)

		if diff < min_diff {
			min_diff = diff
			best = i
		}
	}

	fmt.Println(best)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
