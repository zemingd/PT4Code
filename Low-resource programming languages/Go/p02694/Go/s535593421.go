package main

import (
	"fmt"
	"math"
)

func main() {
	var x, mon float64
	var y int
	fmt.Scan(&x)
	mon = 100
	for mon < x {
		mon = math.Floor(mon * 1.01)
		y++
	}
	fmt.Println(y)
}
