package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	var taste = make([]int, n)

	min := 10000000000000000
	ind := 0
	for i := range taste {
		taste[i] = l + (i + 1) - 1

		if taste[i]*taste[i] < min {
			min = taste[i] * taste[i]
			ind = i
		}
	}
	sum := 0
	for i, v := range taste {
		if i != ind {
			sum += v
		}
	}
	fmt.Println(sum)

}
