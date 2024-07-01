package main

import (
    "fmt"
    "sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	mochi := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&mochi[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(mochi)))

	count := 1
	for i := 1; i<n; i++ {
		if mochi[i] == mochi[i-1]
			continue
		}
		count++
	}
	fmt.Println(count)
}
