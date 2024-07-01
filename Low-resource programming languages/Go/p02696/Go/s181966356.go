package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	var n int
	fmt.Scan(&a, &b, &n)

	max := 0
	for x := n; x > 0; x -= int(b) {
		n := math.Floor(a*float64(x)/b) - a*math.Floor(float64(x)/b)
		if int(n) > max {
			max = int(n)
		}
	}
	fmt.Println(max)
}
