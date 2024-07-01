package main

import (
	"fmt"
	"math"
)

func main() {
	var d, n float64

	fmt.Scan(&d, &n)
	if n == 100 {
		n++
	}
	aa := math.Pow(100.0, d)
	fmt.Println(int(aa * n))

}