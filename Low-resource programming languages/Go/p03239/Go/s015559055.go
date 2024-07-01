package main

import (
	"fmt"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)

	var minCost int
	for i := 0; i < n; i++ {
		var cost, time int
		fmt.Scan(&cost, &time)

		if time <= t {
			if minCost == 0 {
				minCost = cost
				continue
			}
			if cost < minCost {
				minCost = cost
			}
		}
	}
	if minCost == 0 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
	}
}
