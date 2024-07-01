package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m int
	fmt.Scanf("%d %d %d %d", &a, &b, &h, &m)
	answer := colon(float64(a), float64(b), float64(h), float64(m))
	fmt.Println(answer)
}

func colon(a, b, h, m float64) float64 {
	angleM := 6.0 * m
	angleH := 30.0*h + 0.5*m
	angleMH := abs(angleH - angleM)
	radian := angleMH * math.Pi / 180.0
	x := abs(b - (math.Cos(radian) * a))
	y := abs(math.Sin(radian) * a)
	return math.Sqrt(math.Pow(x, 2.0) + math.Pow(y, 2.0))
}

func abs(x float64) float64 {
	if x < 0.0 {
		return -x
	}
	return x
}
