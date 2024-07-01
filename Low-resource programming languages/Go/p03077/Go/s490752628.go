package main

import (
	"fmt"
	"math"
)

func main() {
	var n, p int
	fmt.Scan(&n)

	min := int(math.Pow(10, 15))
	for i := 0; i < 5; i++ {
		fmt.Scan(&p)
		if p <= min {
			min = p
		}
	}

	fmt.Println(((n + min - 1) / min) + 4)
}
