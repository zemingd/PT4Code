package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for B - Exponential
	var X int
	fmt.Scanf("%d", &X)

	for i := X; 0 < i; i-- {
		temp := math.Sqrt(float64(i))
		if math.Round(temp) == temp {
			fmt.Println(i)
			break
		}
	}
}
