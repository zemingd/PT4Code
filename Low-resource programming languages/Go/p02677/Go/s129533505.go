package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	angle := math.Abs(30*h - 6*m)
	if angle >= m*5.5 || angle < 180 {
		angle -= 5.5 * m
	} else {
		angle += 5.5 * m
	}
	d := a*a + b*b - 2*a*b*math.Cos(angle*math.Pi/180)
	d = math.Sqrt(d)

	fmt.Println(d)
}
