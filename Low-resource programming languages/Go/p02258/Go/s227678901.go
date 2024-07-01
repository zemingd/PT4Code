package main

import (
	"fmt"
)

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)

	var r int
	fmt.Scan(&r)
	r_min := r
	d_max := -9999999999
	for i := 1; i < n; i++ {
		var r int
		fmt.Scan(&r)

		d_max = max(d_max, r-r_min)
		r_min = min(r_min, r)
	}

	fmt.Println(d_max)
}

