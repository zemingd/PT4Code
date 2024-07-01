package main

import (
	"fmt"
	"sort"
)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	sort.Ints(a)
	var r float64
	r = (float64(a[0]) + float64(a[1])) / 2
	for i := 2; i < n; i++ {
		r = (r + float64(a[i])) / 2
	}
	fmt.Println(r)
}
