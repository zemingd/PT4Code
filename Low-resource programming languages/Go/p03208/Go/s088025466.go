package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	hSlice := make([]int, n)
	for i := range hSlice {
		fmt.Scan(&hSlice[i])
	}

	sort.Ints(hSlice)

	min := 1000000001
	for i := 0; k+i-1 < n; i++ {
		if hSlice[k+i-1]-hSlice[i] < min {
			min = hSlice[k+i-1] - hSlice[i]
		}
	}
	fmt.Println(min)
}
