package main

import (
	"fmt"
	"math"
)

func main() {
	var r int
	fmt.Scan(&r)

	fmt.Println(float64(r) * 2 * math.Pi)
}
