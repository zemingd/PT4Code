package main

import "fmt"

func main() {
	var w, h, x, y float64
	fmt.Scan(&w, &h, &x, &y)

	var ans float64
	if x > w/2 {
		ans = (w - x) * h
	} else {
		ans = x * h
	}

	var v float64
	if y > h/2 {
		v = w * (h - y)
	} else {
		v = w * y
	}
	eq := 0
	if int64(ans) == int64(v) {
		eq++
	}

	fmt.Println(ans, eq)
}
