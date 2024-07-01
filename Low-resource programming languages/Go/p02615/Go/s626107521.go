package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	sum := 0
	min := 1000000000
	for N > 0 {
		N--
		var a int
		fmt.Scan(&a)
		if a < min {
			min = a
		}
		sum += a
	}
	fmt.Printf("%d\n", sum-min)
}
