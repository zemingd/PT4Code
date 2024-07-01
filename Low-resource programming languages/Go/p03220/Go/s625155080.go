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
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}


	point := 0
	nearestDiff := 1000000
	for idx, x := range h {
		diff := int(math.Abs(float64(a) - (float64(t) - float64(x) * 0.006)))
		if diff < nearestDiff {
			point = idx + 1
			nearestDiff = diff
		}
	}
	fmt.Println(point)
}
