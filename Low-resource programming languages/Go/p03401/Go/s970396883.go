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
	totalA = totalA + int(math.Abs(float64(a[n-1])))

	answer := make([]int, n, n)
	prev1 := 0
	next1 := 0
	for i := 0; i < n; i++ {
		if i < (n - 1) {
			next1 = a[i+1]
		} else {
			next1 = 0
		}
		answer[i] = totalA - int(math.Abs(float64(prev1-a[i])))
		answer[i] = answer[i] - int(math.Abs(float64(a[i]-next1)))
		answer[i] = answer[i] + int(math.Abs(float64(prev1-next1)))

		prev1 = a[i]
	}

	for i := 0; i < n; i++ {
		fmt.Printf("%d\n", answer[i])
	}
}
