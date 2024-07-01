package main

import (
	"fmt"
	"math"
)

type point struct {
	x float64
	y float64
}

func pointOf(r int, t float64) point {
	return point{
		(float64(r)) * math.Cos(t),
		(float64(r)) * math.Sin(t),
	}
}

func longAng(h int, m int) float64 {
	return (2*math.Pi)/12*(float64(h)) + (2*math.Pi)/(12*60)*(float64(m))
}

func shortAng(m int) float64 {
	return (2 * math.Pi) / 60 * (float64(m))
}

func dist(p1 point, p2 point) float64 {
	return math.Sqrt(math.Pow(p1.x-p2.x, 2) + math.Pow(p1.y-p2.y, 2))
}

func main() {
	var a, b, h, m int
	fmt.Scanf("%d %d %d %d", &a, &b, &h, &m)
	lp := pointOf(a, longAng(h, m))
	sp := pointOf(b, shortAng(m))
	fmt.Println(dist(lp, sp))
}
