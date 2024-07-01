package main

import "fmt"

func main() {
	var (
		w, h, x, y float64
	)
	fmt.Scan(&w, &h, &x, &y)
	var s = w * h / 2
	var f = 0
	if int(w) == 2*int(x) && int(h) == 2*int(x) {
		f = 1
	}
	fmt.Printf("%.10f %d\n", s, f)
}