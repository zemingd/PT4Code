package main

import (
	"fmt"
	"math"
)

func main() {
	var radius float64
	fmt.Scan(&radius)

	fmt.Println(radius * math.Pi * 2.0)
}