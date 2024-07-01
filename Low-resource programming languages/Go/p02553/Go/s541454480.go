package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	res := math.MinInt64
	products := make([]int, 4)
	products[0] = a * c
	products[1] = a * d
	products[2] = b * c
	products[3] = b * d
	for _, product := range products {
		if res < product {
			res = product
		}
	}
	fmt.Println(res)
}
