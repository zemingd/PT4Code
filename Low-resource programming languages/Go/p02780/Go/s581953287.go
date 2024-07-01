package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	e := make([]float64, n)
	var max float64
	var sum float64
	for i := 0; i < n; i++ {
		var p float64
		fmt.Scan(&p)
		e[i] = (float64(1) + p) / float64(2)
		if i < k - 1 {
			sum += e[i]
		} else if i == k - 1 {
			sum += e[i]
			max = sum
		} else if i > k - 1 {
			dif := -e[i-k] + e[i]
			sum += dif
			if max < sum {
				max = sum
			}
		}
	}
	fmt.Println(max)
}
