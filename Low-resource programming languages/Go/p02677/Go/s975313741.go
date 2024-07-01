package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	mx := b * math.Cos(6*m*math.Pi/180)
	my := b * math.Sin(6*m*math.Pi/180)

	hrad := 360*(h/12) + 30*(m/60)
	hx := a * math.Cos(hrad*math.Pi/180)
	hy := a * math.Sin(hrad*math.Pi/180)

	calc := (mx-hx)*(mx-hx) + (my-hy)*(my-hy)
	fmt.Println(math.Sqrt(calc))
}
