package main

import (
	"fmt"
	"math"
)

func main() {
	var n int

	fmt.Scanf("%d", &n)

	var min int
	fmt.Scanf("%d", &min)

	max := math.MinInt64
	for i := 0; i < n-1; i++ {
		var r int
		fmt.Scanf("%d", &r)
		max = int(math.Max(float64(max), float64(r-min)))
		min = int(math.Min(float64(min), float64(r)))
	}
	fmt.Println(max)
}
