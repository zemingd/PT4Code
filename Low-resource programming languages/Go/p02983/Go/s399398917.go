package main

import (
	"fmt"
	"math"
)

func main() {
	var L, R int
	fmt.Scan(&L, &R)

	min := 1 << 10

	for i := L; i <= int(math.Min(float64(R), float64(L+2019))); i++ {
		for j := i + 1; j <= int(math.Min(float64(R), float64(L+2019))); j++ {
			if (i*j)%2019 < min {
				min = (i * j) % 2019
			}
		}
	}

	fmt.Println(min)
}
