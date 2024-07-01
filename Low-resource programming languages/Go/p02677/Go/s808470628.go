package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m float64
	fmt.Scan(&a, &b, &h, &m)

	ha := 30 * h
	ma := 6 * m

	switch {
	case math.Abs(ha-ma) == 180:
		fmt.Println(a + b)
	case ha == ma:
		fmt.Println(math.Abs(a - b))
	default:
		ang := math.Max(ha-ma, ma-ha)
		if ang > 180 {
			ang = 360 - ang
		}
		ans := math.Pow(a, 2) + math.Pow(b, 2) - (2 * a * b * math.Cos(ang*math.Pi/180))
		fmt.Println(math.Sqrt(ans))
	}
}
