package main

import (
	"fmt"
	"math"
)

func sq(i float64) float64 {
	return i * i
}

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	mo := m * 6
	ho := h*30 + m*0.5

	result := sq(a) + sq(b) - 2*a*b*math.Cos((mo-ho)*(math.Pi/180))
	fmt.Println(math.Sqrt(result))
}
