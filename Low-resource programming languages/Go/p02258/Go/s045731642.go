package main

import (
	"fmt"
	"math"
)

func main() {
	var n int

	fmt.Scanf("%d", &n)

	rs := make([]int, n)
	for i := range rs {
		fmt.Scanf("%d", &rs[i])
	}

	var max int
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if i == 0 && j == 1 {
				max = rs[j] - rs[i]
				continue
			}
			max = int(math.Max(float64(max), float64(rs[j]-rs[i])))
		}
	}
	fmt.Println(max)
}
