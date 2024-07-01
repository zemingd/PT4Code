package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	listA := make([]float64, n)
	listB := make([]float64, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&listB[i])
	}

	listA[0] = listB[0]
	for i := 1; i < n-1; i++ {
		listA[i] = math.Min(listB[i], listB[i-1])
	}
	listA[n-1] = listB[n-2]
	result := 0.0
	for _, i := range listA {
		result += i
	}
	fmt.Println(result)

}
