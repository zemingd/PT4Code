package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		n, t, a int
	)
	fmt.Scanf("%d\n%d %d\n", &n, &t, &a)
	a *= 1000
	t *= 1000
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}


	point := 0
	nearestDiff := math.MaxInt64
	for idx, x := range h {
		diff := a - (t - x * 6)
		if diff < 0 {
			diff = -diff
		}
		if diff < nearestDiff {
			point = idx + 1
			nearestDiff = diff
		}
	}
	fmt.Println(point)
}
