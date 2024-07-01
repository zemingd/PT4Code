package main

import (
	"fmt"
)

func main() {
	var w, h, x, y float64
	fmt.Scan(&w, &h, &x, &y)

	if x == w/2 && y == h/2 {
		fmt.Println(w*h/2, 1)
	} else {
		fmt.Println(w*h/2, 0)
	}
}
