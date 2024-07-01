package main

import "fmt"

func main() {
	var (
		w, h, x, y float64
	)
	fmt.Scan(&w, &h, &x, &y)
	var s = w * h / 2
	var f = 0
	if w/2 == x && h/2 == x {
		f = 1
	}
	fmt.Printf("%.10f %d\n", s, f)
}
