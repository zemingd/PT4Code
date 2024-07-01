package main

import (
	"fmt"
	"math"
)

func main() {
	var r float64
	fmt.Scan(&r)

	p := 2 * r * math.Pi

	fmt.Println(p)
}
