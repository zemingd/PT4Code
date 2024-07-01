package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&arr[i])
	}
	mn := math.MaxInt32
	for i := 0; i < n - 1; i++ {
		sum1, sum2 := 0, 0
		for j := 0; j < n; j++ {
			if i < j {
				sum1 += arr[j]
			} else {
				sum2 += arr[j]
			}
		}
		if abs(sum1 - sum2) < mn {
			mn = abs(sum1 - sum2)
		}
	}
	fmt.Println(mn)
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}
