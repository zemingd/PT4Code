package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d\n", &N)
	data := [100][3]int{}
	for i := 0; i < N; i++ {
		var x, y, h int
		fmt.Scanf("%d %d %d\n", &x, &y, &h)
		data[i][0] = x
		data[i][1] = y
		data[i][2] = h
	}
	var rx, ry, rh int
	for cx := 0; cx <= 100; cx++ {
		var ok bool
		for cy := 0; cy <= 100; cy++ {
			ok = true
			var H int
			for i := 0; i < N; i++ {
				x, y, h := data[i][0], data[i][1], data[i][2]
				if h == 0 {
					continue
				}
				X := x - cx
				if X < 0 {
					X = -1 * X
				}
				Y := y - cy
				if Y < 0 {
					Y = -1 * Y
				}
				Hi := h + X + Y
				if H == 0 {
					H = Hi
				}
				if H != Hi {
					ok = false
					break
				}
			}
			if ok && H >= 1 {
				rx = cx
				ry = cy
				rh = H
				break
			}
		}
		if ok {
			break
		}
	}
	fmt.Printf("%d %d %d\n", rx, ry, rh)
}
