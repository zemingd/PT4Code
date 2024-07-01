package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)

	max := 0
	for i := 1; i <= 32; i++ {
		for j := 2; j <= 10; j++ {
			pow := int(math.Pow(float64(i), float64(j)))
			if pow <= x {
				max = pow
			} else {
				break
			}
		}
	}
	fmt.Println(max)
}
