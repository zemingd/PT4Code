package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x, t float64
	fmt.Scanf(`%f %f %f`, &n, &x, &t)
	times := math.Ceil(n / x)
	fmt.Printf(`%.0f`, times*t)
}
