package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	var ins []int

	fmt.Scan(&n, &k)
	for i := 0; i < n; i++ {
		var in int
		fmt.Scan(&in)
		ins = append(ins, in)
	}

	sort.Ints(ins)
	min := 1000 * 1000 * 1000 * 1000
	for i := 0; i+k-1 < n; i++ {
		diff := ins[i+k-1] - ins[i]
		if min > diff {
			min = diff
		}
	}

	fmt.Println(min)
}
