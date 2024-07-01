package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	var K int
	fmt.Scan(&K)

	X := make([]int, N)
	for i := 0; i < N; i++ {
		var x int
		fmt.Scan(&x)

		X[i] = x
	}

	values := make([]int, 0)
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			val := X[i] * X[j]
			values = append(values, val)
		}
	}
	sort.Ints(values)

	fmt.Println(values[K-1])
}
