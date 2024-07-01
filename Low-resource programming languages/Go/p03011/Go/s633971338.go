package main

import (
	"fmt"
	"math"
)

func main() {
	var P, Q, R float64
	fmt.Scan(&P, &Q, &R)

	a := P + Q
	b := Q + R
	c := R + P
	ans := math.Min(math.Min(a, b), c)
	fmt.Println(ans)
}
