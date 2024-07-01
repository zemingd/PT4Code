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

	r_min := 1000000000
	d_max := -999999999
	for i := 1; i <= n; i++ {
		var r int
		fmt.Scan(&r)

		d_max = max(d_max, r-r_min)
		r_min = min(r_min, r)
	}

	fmt.Println(d_max)

	/* TLE!!!!!
	max := -999999999
	for j := 1; j <= n; j++ {
		for i := 1; i < j; i++ {
			diff := R[j-1] - R[i-1]
			if diff > max {
				max = diff
			}
		}
	}

	fmt.Println(max)
	*/
}

