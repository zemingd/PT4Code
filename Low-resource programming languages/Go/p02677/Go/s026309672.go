package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	var h, m float64
	fmt.Scan(&a, &b, &h, &m)
	mc := m * 6.0
	hc := (360/12)*h + mc/12
	if mc == hc {
		fmt.Println(math.Abs(b - a))
		return
	}
	ang := math.Abs(mc - hc)
	if ang > 180 {
		ang = 360 - ang
	}
	// 予言定理
	//c2 := math.Sqrt()
	c2 := math.Pow(a, 2) + math.Pow(b, 2) - 2*a*b*math.Cos(math.Pi*ang/180)
	r := math.Sqrt(c2)
	fmt.Println(r)
}
