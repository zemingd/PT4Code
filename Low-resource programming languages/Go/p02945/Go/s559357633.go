package main

import (
	"fmt"
	"math"
)

func main() {

	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	fmt.Println(math.Max((math.Max(float64(A)+float64(B), float64(A)-float64(B))), float64(A)*float64(B)))

}
