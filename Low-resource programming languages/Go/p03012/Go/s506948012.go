package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	W := make([]int, 0, N)
	all := 0
	for i := 0; i < N; i++ {
		var w int
		fmt.Scan(&w)
		W = append(W, w)
		all += w
	}

	sum := 0
	min := all
	for i := 0; i < N; i++ {
		sum += W[i]
		c := all - sum - sum
		if c < 0 {
			c = -c
		}
		if c < min {
			min = c
		}
	}
	fmt.Println(min)
}
