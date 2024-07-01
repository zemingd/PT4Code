package main

import (
	"fmt"
	"math"
)

func normalize(a float64) float64 {
	if a >= 360 {
		return normalize(a - 360)
	}
	return a
}

func calcDiff(a float64, b float64) float64 {
	var deg = math.Abs(a - b)
	return deg
}

func main() {
	var a, b, h, m int
	fmt.Scanf("%d %d %d %d %d", &a, &b, &h, &m)

	var min float64 = (float64) (h * 60 + m)
	var degA float64 = min / 60 / 12 * 360
	degA = normalize(degA)
	var degB float64 = min / 60 * 360
	degB = normalize(degB)
	var deg = calcDiff(degA, degB)
	// fmt.Printf("min=%g, degA= %g, degB = %g, deg=%g", min, degA, degB, deg)

	// 余弦定理
	// c^2 = a^2 + b^2 - 2ab cosAB
	var cos float64 = math.Cos(deg * float64(math.Pi / 180))
	var c2 float64 = float64(a * a + b * b) - float64(2 * a * b) * cos
	var c = math.Sqrt(c2)
	fmt.Print(c)
}
