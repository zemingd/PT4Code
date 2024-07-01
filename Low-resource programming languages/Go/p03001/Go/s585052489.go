package main

import (
	"fmt"
	"math"
)

func main() {
	var w float64
	var h float64
	var x float64
	var y float64

	fmt.Scan(&w, &h, &x, &y)

	centerX := w / 2.0
	centerY := h / 2.0

	var flag int
	if math.Abs(centerX-x) < 1e-9 && math.Abs(centerY-y) < 1e-9 {
		flag = 1
	} else {
		flag = 0
	}

	area := w * h / 2.0

	fmt.Println(area, flag)
}
