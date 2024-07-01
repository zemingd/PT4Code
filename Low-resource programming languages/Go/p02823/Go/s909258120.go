package main

import (
	"fmt"
	"math"
)

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	res := 0
	if (A-B)%2 == 0 {
		res = int(math.Abs(float64(A-B))) / 2
	} else {
		oneA := A - 1
		oneB := B - 1
		AN := N - A
		BN := N - B
		AB := math.Max(float64(oneA), float64(oneB))
		ANBN := math.Max(float64(AN), float64(BN))
		res = int(math.Min(AB, ANBN))

	}
	fmt.Println(res)
}
