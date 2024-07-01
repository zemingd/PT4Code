package main

import (
	"fmt"
)

func main() {
	var w, h, x, y float64
	fmt.Scan(&w)
	fmt.Scan(&h)

	fmt.Scan(&x)
	fmt.Scan(&y)

	var ok int
	if x == w/2 && y == h/2 {
		ok = 1
	}

	fmt.Printf("%v %v\n", x*y/2, ok)
}
