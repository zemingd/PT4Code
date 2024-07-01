package main

import (
	"fmt"
	"math"
)

func main() {
	a()
}

func a() {
	var n float64
	var x float64
	var t float64

	fmt.Scanf("%f %f %f", &n, &x, &t)
	num := math.Ceil(n / x)
	fmt.Printf("%.0f", t*num)
}
