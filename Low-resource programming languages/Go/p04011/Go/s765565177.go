package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k, x, y float64
	fmt.Scan(&n, &k, &x, &y)
	fmt.Println(k*x + math.Max(0, n-k)*y)
}
