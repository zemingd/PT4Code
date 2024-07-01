package main

import (
	"fmt"
	"math"
)

func isInteger(x float64) bool {
	return math.Floor(x) == x
}

func main() {
	// Code for B - Crane and Turtle
	var a, b float64
	var x, y float64
	fmt.Scan(&a, &b)
	x = (4*a - b) / 2
	y = (b - 2*a) / 2

	if isInteger(x) && isInteger(y) && x >= 0 && y >= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
