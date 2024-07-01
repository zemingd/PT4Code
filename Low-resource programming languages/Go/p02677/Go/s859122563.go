package main

import (
	"fmt"
	"math"
)

func main() {
	var aLength, bLength, hour, min int
	fmt.Scanf("%d %d %d %d", &aLength, &bLength, &hour, &min)
	var hourAngle, minAngle int
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
	angleRad := float64(angle) * (math.Pi/180)
	//fmt.Println(math.Cos(angleRad))
	cLength := math.Sqrt(float64(aLength * aLength + bLength * bLength) - float64(2 * aLength * bLength) * math.Cos(angleRad))
	fmt.Println(cLength)
}
