package main

import (
	"fmt"
	"math"
)

func main() {
	var N, A, B int64
	fmt.Scan(&N, &A, &B)

	remain := N % (A + B)
	res := A*((N-remain)/(A+B)) + int64(math.Min(float64(remain), float64(A)))
	fmt.Println(res)
}
