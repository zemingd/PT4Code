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

		ABDistance := oneA + oneB
		ANBNDistance := AN + BN
		// AB := math.Max(float64(oneA), float64(oneB))
		// ANBN := math.Max(float64(AN), float64(BN))
		distance := int(math.Min(float64(ABDistance), float64(ANBNDistance)))
		if distance%2 == 0 {
			res = distance / 2
		} else {
			res = (distance + 1) / 2
		}

	}
	fmt.Println(res)
}
