package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x, t float64
	fmt.Scan(&n)
	fmt.Scan(&x)
	fmt.Scan(&t)
	fmt.Println(int((math.Ceil(n / x)) * t))
}
