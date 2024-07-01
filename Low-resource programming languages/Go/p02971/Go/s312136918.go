package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	temp := make([]int, n)
	max := 0
	for i, _ := range a {
		fmt.Scan(&a[i])
		temp[i] = a[i]
		max = Max(max, a[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	for i := 0; i < n; i++ {
		if temp[i] == max {
			fmt.Println(a[1])
		} else {
			fmt.Println(max)
		}
	}
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}