package main

import (
	"fmt"
)

type Point struct {
	x int
	y int
}

func main() {
	var h, w int
	fmt.Scan(&h)
	fmt.Scan(&w)

	a := make([][]byte, h)
	var blackPoints []*Point
	for i := 0; i < h; i++ {
		a[i] = make([]byte, w)
		var s string
		fmt.Scan(&s)
		for j := 0; j < w; j++ {
			a[i][j] = s[j]
			if a[i][j] == '#' {
				blackPoints = append(blackPoints, &Point{
					x: j,
					y: i,
				})
			}
		}
	}

	var max int
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if a[i][j] == '.' {
				var min int
				for _, p := range blackPoints {
					d := abs(p.x-j) + abs(p.y-i)
					if min == 0 || d < min {
						min = d
					}
					if min <= max {
						break
					}
				}
				if min > max {
					max = min
				}
			}
		}
	}

	fmt.Println(max)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
