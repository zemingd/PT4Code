package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	max, nextMax := 0, 0
	maxIdx := 0

	for i := 0; i < n; i++ {
		if max < a[i] {
			nextMax = max
			max = a[i]
			maxIdx = i
		} else if nextMax < a[i] {
			nextMax = a[i]
		}
	}

	for i := range a {
		if i == maxIdx {
			fmt.Println(nextMax)
		} else {
			fmt.Println(max)
		}
	}
}
