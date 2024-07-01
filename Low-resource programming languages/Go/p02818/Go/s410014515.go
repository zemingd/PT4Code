package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, K float64
	fmt.Scan(&A, &B, &K)
	if A-K >= 0 {
		fmt.Println(A-K, B)
	} else {
		fmt.Println(0, math.Max(0, B-(K-A)))
	}
}
