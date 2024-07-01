package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)

	a := float64(w*h) / 2.0
	b := 0
	if x+x == w && y+y == h {
		b = 1
	}
	fmt.Printf("%f %d\n", a, b)
}
