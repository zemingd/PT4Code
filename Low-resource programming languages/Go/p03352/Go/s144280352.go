package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)
	y := int(math.Sqrt(x))
	fmt.Println(y * y)
}
