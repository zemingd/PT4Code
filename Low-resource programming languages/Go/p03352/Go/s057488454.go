package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)
	maxPow := 1
	for i := 2; i < x; i++ {
		j := 2
		for {
			pow := int(math.Pow(float64(i), float64(j)))
			if pow > x || j >= x {
				break
			} else if pow > maxPow {
				maxPow = pow
			}
			j++
		}
	}
	fmt.Println(maxPow)
}
