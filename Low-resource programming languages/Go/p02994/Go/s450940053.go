package main

import (
	"fmt"
	"math"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	min := 1000.0
	total1 := 0
	total2 := 0
	aji := 0
	for i := 1; i <= n; i++ {
		total1 += l + i - 1
	}
	for i := 1; i <= n; i++ {
		total2 = total1 - (l + i - 1)
		if math.Abs(float64(total1-total2)) < min {
			min = math.Abs(float64(total1 - total2))
			aji = total2
		}
	}
	fmt.Println(aji)

}
