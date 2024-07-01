package main

import (
	"fmt"
	"math"
)

func main() {
	var P, Q, R float64
	fmt.Scan(&P, &Q, &R)

	max := math.Max(P, Q)
	max = math.Max(max, R)
	fmt.Println(P + Q + R - max)
}
