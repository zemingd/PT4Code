package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, d int
	fmt.Scanln(&a, &b, &c, &d)
	max := int64(math.MinInt64)
	for i := a; i <= b; i++ {
		for j := c; j <= d; j++ {
			if i*j > max {
				max = i * j
			}
		}
	}
	fmt.Println(max)
}
