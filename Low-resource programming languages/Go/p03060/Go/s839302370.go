package main

import (
	"fmt"
)

func main() {
	var n, cost int
	fmt.Scan(&n)

	values := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&values[i])
	}

	totalCost := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&cost)
		if values[i]-cost > 0 {
			totalCost += values[i] - cost
		}
	}

	fmt.Println(totalCost)
}
