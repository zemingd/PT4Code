package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	afterA := int(math.Max(0, float64(A-K)))
	K -= A - afterA
	afterB := B - K

	fmt.Printf("%d %d\n", afterA, afterB)
}
