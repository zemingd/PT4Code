package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	for i, _ := range x {
		fmt.Scan(&x[i])
	}

	sorted := make([]int, n)
	copy(sorted, x)
	sort.Ints(sorted)

	mid := n/2

	for i := 0; i < n; i++ {
		if x[i] < sorted[mid] {
			fmt.Println(sorted[mid])
		} else {
			fmt.Println(sorted[mid-1])
		}
	}

}
