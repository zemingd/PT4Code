package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	Adeg := h * 30 + m/60 * 30
	Bdeg := m/5 * 30

	Deg := math.Abs(Adeg-Bdeg)
	if Deg > 180 {
		Deg = Deg - 180
	}

	X := math.Pow(a,2) + math.Pow(b,2) - 2*a*b*math.Cos(Deg / 180 * math.Pi)
	
	fmt.Println(math.Sqrt(X))
}
