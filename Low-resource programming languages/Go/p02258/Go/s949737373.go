package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scan(&n)
	vals := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vals[i])
	}

	fmt.Println(getProfit(n, vals))
}

func getProfit(length int, vals []int) int {
	min, max := vals[0], -2147483648
	for i := 1; i < length; i++ {
		if diff := vals[i] - min; max < diff {
			max = diff
		}
		if min > vals[i] {
			min = vals[i]
		}
	}
	return max
}

