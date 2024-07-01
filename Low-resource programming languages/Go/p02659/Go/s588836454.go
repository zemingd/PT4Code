package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)
	result := a * b
	floor := int(math.Floor(result))
	if (a <= math.Pow10(15)) && b < 10 {
		fmt.Printf("%d", floor)
	}
}
