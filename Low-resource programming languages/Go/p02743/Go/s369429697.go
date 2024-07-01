package main

import (
	"fmt"
	"math"
)

func sqrtInequality(a, b, c float64) string {
	if math.Sqrt(a)+math.Sqrt(b) < math.Sqrt(c) {
		return "Yes"
	}
	return "No"
}

func main() {
	var a, b, c float64
	fmt.Scanf("%f %f %f", &a, &b, &c)
	r := sqrtInequality(a, b, c)
	fmt.Print(r)
}
