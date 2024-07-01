package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	answer := maxModSum(n)
	fmt.Println(answer)
}

func maxModSum(n int) int {
	numbers := make([]int, n)
	for i, j := n, 0; i > 0; i, j = i-1, j+1 {
		numbers[j] = i
	}
	s := 0
	for i := 0; i < n; i++ {
		// 4, 3, 2, 1
		// 1, 4, 3, 2 == 6
		// 2, 4, 3, 1 == 7

		// 1, 2
		// 2, 1

		// 3, 2, 1
		// 1, 2, 3 == 1
		// 1, 3, 2 == 3
		// 2, 1, 3 == 3
		// 2, 3, 1 == 3
		// 3, 1, 2 == 2
		// 3, 2, 1 == 0

		if i == 0 {
			continue
		} else {
			s += numbers[i]
		}
	}
	return s
}
