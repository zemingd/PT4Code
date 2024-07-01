package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)
	rec := float64(30*h + m/2 - 10*m)

	cosC := math.Cos(rec * math.Pi / 180)
	//fmt.Println(rec, cosC)
	result := a*a + b*b - float64(2*a*b*cosC)
	fmt.Println(math.Sqrt(result))
}
