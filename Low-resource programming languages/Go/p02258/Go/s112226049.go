package main

import "fmt"

func max(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

func min(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
func main() {
	var n int
	fmt.Scan(&n)
	rate := make([]int, n)
	for i := range rate {
		fmt.Scan(&rate[i])
	}
	minRate := rate[0]
	maxValue := 1 - 10*10*10*10*10*10*10*10*10 - 1

	for i := 1; i < n; i++ {
		maxValue = max(maxValue, rate[i] - minRate)
		minRate = min(minRate, rate[i])
	}

	fmt.Println(maxValue)
}
