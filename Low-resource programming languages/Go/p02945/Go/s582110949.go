package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B float64
	fmt.Scanf("%f", &A)
	fmt.Scanf("%f", &B)

	ans := math.Max(math.Max(A+B, A-B), A*B)
	fmt.Println(ans)
}
