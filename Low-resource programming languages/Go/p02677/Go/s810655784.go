package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	c := a*a + b*b - 2*a*b*math.Cos((math.Pi/6.0)*h-(math.Pi/30.0)*m+(math.Pi/360.0)*m)
	fmt.Println(math.Sqrt(c))
}
