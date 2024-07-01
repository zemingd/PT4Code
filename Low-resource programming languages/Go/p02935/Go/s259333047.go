package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		N int
	)

	fmt.Scan(&N)

	VArray := make([]float64, 0, N)
	for i := 0; i < N; i++ {
		var V float64
		fmt.Scan(&V)
		VArray = append(VArray, V)
	}

	sort.Float64s(VArray)
	sum := VArray[0]
	var second float64 = 2
	for i, v := range VArray {
		if i == 0 {
			continue
		}

		sum = (sum + v) / second
	}

	fmt.Println(sum)
}
