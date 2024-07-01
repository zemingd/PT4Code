package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, d int64

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)

	var w = []int64{a, b}
	var h = []int64{c, d}

	var m int64 = math.MinInt64
	for _, x := range w {
		for _, y := range h {
			m = max(m, x*y)
		}
	}

	fmt.Println(m)
}

func max(a, b int64) int64 {
	if a > b {
		return a
	} else {
		return b
	}
}
