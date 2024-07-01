package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]float64, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	var sum float64
	for i := 0; i < n; i++ {
		sum += 1/arr[i]
	}

	fmt.Println(1/sum)
}
