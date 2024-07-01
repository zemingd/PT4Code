package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	rs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&rs[i])
	}

	max := -999999999
	for j := 1; j <= n; j++ {
		for i := 1; i < j; i++ {
			diff := rs[j-1] - rs[i-1]
			if diff > max {
				max = diff
			}
		}
	}

	fmt.Println(max)
}

