package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var result float64
	for i := 1; i <= n; i++ {
		l := 0
		for j := i; j < k; l++ {
			j *= 2
		}
		result += float64(1) / float64(n) * math.Pow((float64(1)/float64(2)), float64(l))
	}
	fmt.Println(result)
}