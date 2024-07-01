package main

import (
	"fmt"
)

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -n
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	minTaste := 999
	totalTaste := 0
	for i := 0; i < n; i++ {
		taste := l + i
		totalTaste += taste
		if abs(minTaste) > abs(taste) {
			minTaste = taste
		}
	}

	totalTaste -= minTaste
	fmt.Println(totalTaste)
}
