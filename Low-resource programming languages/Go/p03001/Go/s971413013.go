package main

import (
	"fmt"
)

func main() {
	var w, h, x, y, ans int
	var an float64
	fmt.Scan(&w, &h, &x, &y)

	if w/2 == x && h/2 == y {
		an = float64(x * y)
		ans = 1

	} else if w == 0 && h/2 != y {
		a := y - h
		b := y - a
		if a < b {
			an = float64(a / 2)
			ans = 0
		} else {
			an = float64(b / 2)
			ans = 0
		}
	} else if y == 0 && w/2 != x {
		a := x - w
		b := x - a
		if a < b {
			an = float64(a / 2)
			ans = 0
		} else {
			an = float64(b / 2)
			ans = 0
		}
	} else {
		a := x - w
		b := x - a
		c := y - h
		d := y - c
		var ta, yo int
		yo = a
		ta = c
		if a > b && b > 0 || a < 0 {
			yo = b
		}
		if c > d && d > 0 || c < 0 {
			ta = d
		}
		an = float64(ta * yo / 2)
		ans = 0
	}
	fmt.Printf("%v %v", an, ans)
}