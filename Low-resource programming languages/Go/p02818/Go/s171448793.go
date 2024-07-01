package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, k float64
	fmt.Scan(&a, &b, &k)

	t := math.Min(a, k)
	a -= t
	k -= t

	t = math.Min(b, k)
	b -= t

	fmt.Printf("%d %d\n", int(a), int(b))
}
