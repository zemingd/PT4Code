package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scanf("%f %f %f %f", &a, &b, &h, &m)
	var angle_a float64 = 360 / (12 / h)
	var angle_b float64 = 360 / (60 / m)

	angle := math.Abs(angle_a - angle_b)

	ret := a*a + b*b - 2*a*b*math.Cos(angle*math.Pi/180)
	fmt.Printf("%.20f\n", math.Sqrt(ret))
}
