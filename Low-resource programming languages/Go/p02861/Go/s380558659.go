package main

import (
	"fmt"
	"math"
)

type Point struct {
	x float64
	y float64
}

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	
	points := make([]Point, n)
	
	for c := 0; c < n; c++ {
		var x, y float64
		_, _ = fmt.Scan(&x, &y)
		points[c] = Point{x, y}
	}
	
	var m float64 = 0
	
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			m += math.Pow(math.Pow(points[j].x-points[i].x, 2)+math.Pow(points[j].y-points[i].y, 2), 0.5) * 2 / float64(n)
		}
	}
	
	fmt.Println(m)
}
