package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scan(&n)

	weights := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&weights[i])
	}

	min := 99999

	for i := 0; i < n; i++ {
		abs := test(n, weights, i)
		if abs < min {
			min = abs
		}
	}

	fmt.Println(min)

}

func test(n int, weights []int, t int) int {
	s1 := 0
	s2 := 0

	for i := 0; i < n; i++ {
		if i <= t {
			s1 += weights[i]
		} else {
			s2 += weights[i]
		}
	}

	result := s1 - s2

	if result < 0 {
		result *= -1
	}

	return result

}
