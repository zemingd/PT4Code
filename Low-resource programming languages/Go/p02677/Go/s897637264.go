package main

import (
	"fmt"
	"math"
)

func main() {
	var aLength, bLength, hour, min float64
	fmt.Scan(&aLength, &bLength, &hour, &min)
	var hourAngle, minAngle float64
	minAngle = 6 * min
	hourAngle = 30 * hour + 30 * min / 60
	angle := minAngle - hourAngle

	if angle < 0 {
		angle *= -1
	}
	if angle > 180 {
		angle = 360 - angle
	}
	//fmt.Println(angle)
	angleRad := angle * math.Pi/180
	//fmt.Println(math.Cos(angleRad))
	cLength2 := aLength * aLength + bLength * bLength - 2 * aLength * bLength * math.Cos(angleRad)
	fmt.Println(math.Sqrt(cLength2))
}
