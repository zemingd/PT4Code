package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	answer := calcCircumference(n)
	fmt.Println(answer)
}

func calcCircumference(radius int) float64 {
	return float64(2*radius) * math.Pi
}
