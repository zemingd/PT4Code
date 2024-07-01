package main

import (
	"fmt"
	"math"
)

func main() {

	var N, A, B int
	fmt.Scanf("%d %d %d", &N, &A, &B)

	fmt.Println(math.Min(float64(N)*float64(A), float64(B)))

}
