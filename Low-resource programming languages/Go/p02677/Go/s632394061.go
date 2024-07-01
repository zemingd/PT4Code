package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	var mr, hr, r, c float64

	fmt.Scan(&a, &b, &h, &m)

	mr = m * 6
	hr = h*30 + m/2

	if mr-hr > hr-mr {
		r = hr - mr
	} else {
		r = mr - hr
	}
	if r < 0 {
		r += 360
	}

	rn := (r / 180) * math.Pi
	c = math.Sqrt(a*a + b*b - 2*a*b*math.Cos(rn))

	fmt.Print(c)

}
