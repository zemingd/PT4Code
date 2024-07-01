package main

import (
	"fmt"
	"math"
)

func main()  {
	var x int
	fmt.Scan(&x)
	maxPow := 1
	for i := 1; i < x; i++ {
		pow := int(math.Pow(float64(i), float64(2)))
		if pow > x {
			break
		}
		if pow > maxPow {
			maxPow = pow
		}
	}
	fmt.Println(maxPow)
}
