package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)

	var i, j, result float64
	result = 1

	root := math.Sqrt(x)

	for i = 2; i < root; i++ {
		j = 2
		for {
			pow := math.Pow(i, j)
			if pow > x {
				break
			}
			if pow > result {
				result = pow
			}
			j++
		}
	}
	fmt.Println(result)
}
