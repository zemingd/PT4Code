package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		n int
	)
	fmt.Scan(&n)

	var (
		tmp int
		max int
		min int
	)
	max = math.MinInt64
	min = math.MaxInt64

	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		if tmp-min > max {
			max = tmp - min
		}
		if min > tmp {
			min = tmp
		}
	}

	fmt.Println(max)
}

