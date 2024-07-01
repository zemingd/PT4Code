package main

import (
	"fmt"
	"math"
)

func main() {
	var N, A, B float64
	fmt.Scanf("%f", &N)
	fmt.Scanf("%f", &A)
	fmt.Scanf("%f", &B)

	fmt.Println(math.Min(N * A, B))
}
