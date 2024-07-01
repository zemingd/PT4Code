package main

import (
	"fmt"
	"math"
)

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	x := min(b-1, n)
	fmt.Println(int(math.Floor(float64(a*x)/float64(b))) - a*int(math.Floor(float64(x)/float64(b))))
}
