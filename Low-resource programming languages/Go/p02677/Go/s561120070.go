package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)
	a2 := math.Pow(a, 2)
	b2 := math.Pow(b, 2)
	rad := h*30 - 11*m/2
	c := 2 * a * b * math.Cos(rad*math.Pi/180)
	fmt.Printf("%.10f\n", math.Sqrt(a2+b2-c))
}
