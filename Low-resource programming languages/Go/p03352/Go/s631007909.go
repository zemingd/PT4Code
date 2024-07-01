package main

import (
	"fmt"
	"math"
)

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var x, ans int
	fmt.Scan(&x)
	ans = 0

	for b := 1; b < 32; b++ {
		for p := 2; p < 10; p ++ {
			y := int(math.Pow(float64(b), float64(p)))
			if y <= x {
				ans = max(ans, y)
			}
		}
	}
	fmt.Println(ans)
}