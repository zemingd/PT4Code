package main

import (
	"fmt"
	"math"
)

func main() {
	var A float64
	fmt.Scan(&A)
	var B float64
	fmt.Scan(&B)
	numPlug := math.Floor(B / (A - 1))
	numEmpty := numPlug*(A-1) + 1

	if numEmpty < B {
		numPlug++
	}
	fmt.Println(numPlug)
}
