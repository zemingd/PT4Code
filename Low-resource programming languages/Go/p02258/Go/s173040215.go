package main

import (
	"fmt"
	"math"
)

func main() {
	var n, min int
	var a [200000]int
	var profit int = -100000000000

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if i == 0 {
			min = a[0]
		} else {
			profit = int(math.Max(float64(profit), float64(a[i]-min)))
			min = int(math.Min(float64(min), float64(a[i])))
		}
	}
	fmt.Println(profit)
}

