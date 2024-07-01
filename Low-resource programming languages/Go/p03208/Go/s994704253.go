package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	sort.Sort(sort.IntSlice(list))

	min := 1000000000
	for i := 0; i < n-k+1; i++ {
		now := list[i+k-1] - list[i]
		if min > now {
			min = now
		}
	}
	fmt.Println(min)
}
