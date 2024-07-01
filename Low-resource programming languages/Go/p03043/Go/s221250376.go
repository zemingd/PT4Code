package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	fmt.Println(abc126c(n, k))
}

func abc126c(n int, k int) float64 {
	var result float64
	result = 0
	for i := 1; i <= n; i++ {
		if i >= k {
			result += 1.0 / float64(n)
		} else {
			result +=
				(1.0 / float64(n)) *
					math.Pow(0.5, math.Ceil(math.Log2(float64(k)/float64(i))))
		}
	}
	return result
}
