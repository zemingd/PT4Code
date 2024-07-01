package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	var h, m float64
	fmt.Scanf("%f %f %f %f", &a, &b, &h, &m)
	rad := 30*h + 0.5*m - 6*m
	//if rad <= 0 {
	//	rad += 360
	//}
	//if rad >= 180 {
	//	rad -= 180
	//}
	cc := math.Pow(a, 2) + math.Pow(b, 2) - 2*a*b*math.Cos(2*math.Pi*rad/360)
	c := math.Sqrt(cc)
	fmt.Println(c)
}
