package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	total := 0.0
	for i := 1; i <= n; i++ {
		prob := 1.0 / float64(n)
		value := i
		for value < k {
			prob *= 0.5
			value *= 2
		}
		total += float64(prob)
	}
	fmt.Println(float64(total))
}
