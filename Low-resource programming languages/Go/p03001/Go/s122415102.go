package main

import "fmt"

func main() {
	var W, H, x, y float64
	fmt.Scan(&W, &H, &x, &y)

	var minx float64
	if W-x > x {
		minx = x
	} else {
		minx = W - x
	}
	var miny float64
	if H-y > y {
		miny = y
	} else {
		miny = H - y
	}

	ans := 0.0
	e := 0
	if x == 0 || x == W || y == 0 || y == H {
		ans = W * H / 2
		e = 0
	} else if minx/W == miny/H {
		ans = W * H / 2
		e = 1
	} else {
		a := minx * H
		b := miny * W

		if a > b {
			ans = a
		} else if a == b {
			ans = a
			e = 1
		} else {
			ans = b
		}
	}

	fmt.Printf("%f %d\n", ans, e)
}
