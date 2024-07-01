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
		if max < r-min {
			max = r - min
		}
		if min > r {
			min = r
		}
	}
	fmt.Println(max)
}
