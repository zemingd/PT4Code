package main

import (
	"fmt"
	"math"
)

func rad(x float64) float64 {
	return x * math.Pi / 180.0
}

func main() {
	var a, b, h, m int
	fmt.Scan(&a, &b, &h, &m)
	hangle := float64(30*h) + 0.5*float64(m)
	mangle := float64(6 * m)
	angle := math.Abs(hangle - mangle)
	c2 := float64(a*a+b*b) - float64(2*a*b)*math.Cos(rad(angle))
	ans := math.Sqrt(c2)
	fmt.Printf("%.10f\n", ans)
}
