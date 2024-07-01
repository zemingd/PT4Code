package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for B - Exponential
	var X int
	fmt.Scanf("%d", &X)

	if X == 1 {
		fmt.Println("1")
	} else {
		var max int
		for b := 1; b < X; b++ {
			for p := 2; p < 100; p++ {
				A := int(math.Pow(float64(b), float64(p)))
				if A > X {
					break
				} else {
					if max < A {
						max = A
					}
				}
			}
		}
		fmt.Println(max)
	}
}
