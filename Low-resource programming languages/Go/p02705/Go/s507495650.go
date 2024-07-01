package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	fmt.Scan(&n)
	fmt.Println(2.0 * n * float64(math.Pi))
}