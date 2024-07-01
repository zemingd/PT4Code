package main

import (
	"fmt"
	"math"
)

func cnt(a, b int) int {
	var cnt int = 0
	for b > a {
		a *= 2
		cnt++
	}
	return cnt
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var ans float64
	for i := 1; i <= n; i++ {
		win := cnt(i, k)
		ans += math.Pow(1.0/2.0, float64(win)) * 1.0 / float64(n)
	}

	fmt.Printf("%.12f\n", ans)
}