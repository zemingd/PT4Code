package main

import "fmt"

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)

	a := x * h
	b := (w - x) * h
	c := y * w
	d := (h - y) * w
	minx, miny := min(a, b), min(c, d)
	if minx == miny {
		fmt.Println(minx, 1)
	} else {
		fmt.Println(max(minx, miny), 0)
	}
}
