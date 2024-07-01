package main

import (
	"fmt"
	"math"
)

func main() {
	var p, q, r int
	fmt.Scanf("%d %d %d", &p, &q, &r)

	ans := (p + q + r) - max(p, q, r)
	fmt.Print(ans)
}

func max(a int, b int, c int) int {
	max1 := math.Max(float64(a), float64(b))
	max2 := math.Max(float64(c), float64(max1))
	return int(max2)
}
