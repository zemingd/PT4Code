package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m int
	fmt.Scan(&a, &b, &h, &m)

	min := float64(h*60 + m)
	long := float64(360) / float64(60)
	short := float64(360) / float64(12*60)
	temp := long * min
	for temp >= 360.0 {
		temp -= 360.0
	}
	ang := abs(short*min - temp)
	ang = Min(ang, 360-ang)

	aa := float64(a)
	bb := float64(b)
	fmt.Println(math.Sqrt(aa*aa + bb*bb - 2*aa*bb*math.Cos(ang*math.Pi/180)))
}

func abs(a float64) float64 {
	if a < 0 {
		return (-1) * a
	}
	return a
}

func Min(a, b float64) float64 {
	if a < b {
		return a
	}
	return b
}