package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n, n)
	totalA := 0
	prev := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		totalA = totalA + int(math.Abs(float64(prev-a[i])))
		prev = a[i]
	}

	answer := make([]int, n, n)
	prev1 := 0
	prev2 := 0
	for i := 0; i < n; i++ {
		answer[i] = totalA - int(math.Abs(float64(prev2-prev1)))
		answer[i] = totalA - int(math.Abs(float64(prev1-a[i])))
		answer[i] = totalA + int(math.Abs(float64(prev2-a[i])))
		prev2 = prev1
		prev1 = a[i]
	}

	for i := 0; i < n; i++ {
		fmt.Printf("%d\n", answer[i])
	}
}
