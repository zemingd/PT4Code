package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	ys := make([]int, n)
	copy(ys, xs)
	sort.Ints(ys)
	mid1 := ys[len(ys)/2-1]
	mid2 := ys[len(ys)/2]

	for _, x := range xs {
		if x <= mid1 {
			fmt.Println(mid2)
		} else {
			fmt.Println(mid1)
		}
	}
}
