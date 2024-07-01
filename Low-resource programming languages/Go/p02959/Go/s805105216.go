package main

import (
	"fmt"
	"math"
)

func min(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func main() {
	var n, cnt int
	fmt.Scan(&n)

	a := make([]int, n+1)
	for i := 0; i <= n; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])

		l := min(a[i], b[i])
		cnt += l
		a[i] -= l
		b[i] -= l

		r := min(a[i+1], b[i])
		cnt += r
		a[i+1] -= r
		b[i] -= r
	}

	fmt.Println(cnt)
}
