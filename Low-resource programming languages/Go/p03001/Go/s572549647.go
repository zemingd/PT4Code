package main

import (
	"fmt"
)

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)
	area := w * h / 2
	hasMultipleAnswer := x == w/2 && y == h/2
	fmt.Printf("%v %v\n", area, hasMultipleAnswer)
}
