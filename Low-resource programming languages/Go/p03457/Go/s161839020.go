package main

import (
	"fmt"
	"math"
)

type Point struct {
	t int
	x int
	y int
}

func (p Point) distance(p2 Point) int {
	return int(math.Abs(float64(p2.x-p.x))) + int(math.Abs(float64(p2.y-p.y)))
}

func main() {
	var n int
	fmt.Scanln(&n)
	points := make([]Point, n)
	for i := 0; i < n; i++ {
		var t, x, y int
		fmt.Scanf("%d %d %d", &t, &x, &y)
		points[i] = Point{t, x, y}
	}

	// fmt.Println(points)

	prevPoint := Point{0, 0, 0}
	carryOut := true
	for _, point := range points {
		distance := point.distance(prevPoint)
		deltaT := point.t - prevPoint.t

		if distance > deltaT {
			carryOut = false
			break
		}
		if (deltaT-distance)%2 != 0 {
			carryOut = false
			break
		}
	}

	if carryOut {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
