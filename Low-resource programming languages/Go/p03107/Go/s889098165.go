package main

import (
	"fmt"
	"math"
)

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	var S string
	fmt.Scan(&S)

	red, blue := 0, 0
	for _, cube := range S {
		if cube == '0' {
			red++
		} else {
			blue++
		}
	}
	fmt.Println(intMin(red, blue) * 2)
}
