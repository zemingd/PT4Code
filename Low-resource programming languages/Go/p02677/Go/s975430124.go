package main

import (
	"fmt"
	"math"
	"math/cmplx"
)

func main() {
	var a, b, h, m int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&h)
	fmt.Scan(&m)

	t := float64(h*60 + m)

	c := complex(float64(a)*math.Cos(math.Pi*t/360)-float64(b)*math.Cos(math.Pi*t/30),
		float64(a)*math.Sin(math.Pi*t/360)-float64(b)*math.Sin(math.Pi*t/30))

	fmt.Println(cmplx.Abs(c))
}
