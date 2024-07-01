package main

import (
	"fmt"
)

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)
	area := float32(w * h / 2)
	var hasMultipleAnswer int
	if x == w/2 && y == h/2 {
		hasMultipleAnswer = 1
	} else {
		hasMultipleAnswer = 0
	}
	fmt.Printf("%v %v\n", area, hasMultipleAnswer)
}
