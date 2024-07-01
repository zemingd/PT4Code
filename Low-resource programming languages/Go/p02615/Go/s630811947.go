package main

import (
	"fmt"
	"sort"
)

func chatInACircle(a []int) int {
	sort.Slice(a, func(i, j int) bool {
		return a[i] > a[j]
	})
	if len(a) == 2 {
		return a[0]
	}

	m := a[0]
	a = a[1:]

	for i := 0; i < len(a) - 1; i++ {
		m += a[i/2]
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