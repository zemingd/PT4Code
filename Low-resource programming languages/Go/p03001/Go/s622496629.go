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

	//if (x == 0 && y == 0) || (x == w && y == h) || (x == 0 && y == h) || (x == w && y == 0) {
	//	fmt.Println(float64(w*h/2), 0)
	//	return
	//}

	if float64(y) == float64(h*x)/float64(w) && float64(y) == (float64(h)-float64(h*x)/float64(w)) {
		fmt.Println(float64(w*h)/float64(2), 1)
		return
	}
	if float64(y) == float64(h*x)/float64(w) {
		fmt.Println(float64(w*h)/float64(2), 0)
		return
	}
	if float64(y) == (float64(h) - float64(h*x)/float64(w)) {
		fmt.Println(float64(w*h)/float64(2), 0)
		return
	}

	if x == 0 || y == 0 || x == w || y == h {
		fmt.Println(float64(w*h)/float64(2), 0)
		return
	}

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
