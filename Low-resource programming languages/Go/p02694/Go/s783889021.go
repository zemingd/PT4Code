package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)

	i := 0
	y := float64(100)
	for ; y < x; i++ {
		y = math.Floor(y * 1.01)
	}
	fmt.Println(i)
}
