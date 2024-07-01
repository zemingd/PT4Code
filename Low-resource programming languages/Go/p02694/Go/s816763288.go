package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scanf("%d", &x)

	year := 0
	total := 100.0
	for total < float64(x) {
		total = math.Floor(total * 1.01)
		year++
	}

	fmt.Printf("%d\n", year)
}