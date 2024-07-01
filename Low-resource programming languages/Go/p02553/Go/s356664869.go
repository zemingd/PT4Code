package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	res := math.MinInt64
	for i := a; i <= b; i++ {
		for j := c; j <= d; j++ {
			product := i * j
			if product > res {
				res = product
			}
		}
	}

	fmt.Println(res)
}
