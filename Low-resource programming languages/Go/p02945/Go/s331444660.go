package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	fmt.Println(math.Max(math.Max(float64(a+b), float64(a-b)), float64(a*b)))
}
