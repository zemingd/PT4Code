package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)
	sum := a + b
	diff := a - b
	product := a * b
	fmt.Println(int(math.Max(math.Max(sum, diff), product)))
}
