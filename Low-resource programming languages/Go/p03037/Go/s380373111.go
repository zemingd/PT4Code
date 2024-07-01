package main

import (
	"fmt"
	"math"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	l := 1
	r := N
	var L, R int
	for i := 0; i < M; i++ {
		fmt.Scan(&L, &R)

		l = int(math.Max(float64(l), float64(L)))
		r = int(math.Min(float64(r), float64(R)))
	}

	fmt.Println(r - l + 1)
}
