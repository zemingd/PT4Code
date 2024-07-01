package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)
	sqrt := math.Sqrt(x)
	fmt.Println(int(sqrt) * int(sqrt))
}
