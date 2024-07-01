package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scanln(&N)
	data := make([]int, N)
	min := math.MaxInt64
	for i := 0; i < N; i++ {
		var n int
		fmt.Scan(&n)
		data[i] = n
		if min > n {
			min = n
		}
	}

	for min > 1 {
		next := min
		for i, n := range data {
			d := n % min
			if min != n && d > 0 {
				data[i] = d
				if d < next {
					next = d
				}
			}
		}
		if min == next {
			break
		}
		min = next
	}

	fmt.Println(min)
}
