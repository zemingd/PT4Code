package main

import (
	"fmt"
	"math"
)

func main() {
	var N, A, B float64
	fmt.Scan(&N, &A, &B)

	fmt.Println(math.Min(N*A, B))
}
