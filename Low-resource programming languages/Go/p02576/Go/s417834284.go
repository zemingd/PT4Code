package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x, t float64
	fmt.Scan(&n, &x, &t)
	fmt.Println(math.Ceil(n/x) * t)
}
