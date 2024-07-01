package main

import (
	"fmt"
	// "math"
)

func main() {
	var n int
	fmt.Scan(&n)

	var d [50]int
	for i := 0; i < n; i++ {
		var x int
		fmt.Scan(&x)
		d[i] = x
	}

	sum := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			// fmt.Println(d[i], d[j], d[i]*d[j])
			sum += d[i] * d[j]
		}
	}
	fmt.Println(sum)
}
