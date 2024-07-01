package main

import (
	"fmt"
)

func main() {
	var n, limitTime int
	fmt.Scan(&n, &limitTime)

	costs := make([]int, n)
	times := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&costs[i], &times[i])
	}

	minCost := 1001
	for i, time := range times {
		if limitTime < time {
			continue
		}

		if minCost > costs[i] {
			minCost = costs[i]
		}
	}

	if minCost == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
	}
}
