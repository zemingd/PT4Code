package main

import (
	"fmt"
	"math"
)

func main() {

	var P, Q, R int
	fmt.Scanf("%d %d %d", &P, &Q, &R)

	fmt.Println(math.Min(math.Min(float64(P)+float64(Q), float64(R)+float64(Q)), float64(P)+float64(R)))
}
