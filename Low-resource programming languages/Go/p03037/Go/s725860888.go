package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	left := make([]int, m)
	right := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d", &left[i], &right[i])
	}

	l, r := left[0], right[0]
	for i := 1; i < m; i++ {
		if r < left[i] || right[i] < l {
			r = 0
			l = 1
			break
		} else if l < left[i] && r < right[i] {
			l = left[i]
		} else if l < left[i] && right[i] < r {
			l = left[i]
			r = right[i]
		} else if left[i] < l && right[i] < r {
			r = right[i]
		}
	}

	fmt.Println(r - l + 1)
}
