package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	R := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&R[i])
	}

	r_min := R[0]
	d_max := R[1] - R[0]
	for i := 1; i < n; i++ {
		if R[i]-r_min > d_max {
			d_max = R[i] - r_min
		}

		if R[i] < r_min {
			r_min = R[i]
		}
	}

	fmt.Println(d_max)
}

