package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(d)))

	count := 1
	for i := 0; i < n-1; i++ {
		if d[i] != d[i+1] {
			count++
		}
	}
	fmt.Println(count)
}
