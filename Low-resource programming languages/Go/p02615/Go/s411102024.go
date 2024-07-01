package main

import (
	"fmt"
	"sort"
)

func chatInACircle(a []int) int {
	sort.Slice(a, func(i, j int) bool {
		return a[i] > a[j]
	})
	if len(a) <= 1 {
		return 0
	}
	if len(a) == 2 {
		return a[0]
	}

	m := a[0]
	a = a[1:]

	lim := len(a) - 1
	numLim := 2
	for i := 0; i < len(a); i++ {
		for j := 0; j < numLim; j++ {
			if lim > 0 {
				m += a[i]
				lim--
			}
			
		}
	}

	return m
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ans := chatInACircle(a)
	fmt.Println(ans)
}
