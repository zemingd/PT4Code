package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, mochi_num, under int
	fmt.Scan(&n)
	mochi := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&mochi[i])
	}
	// fmt.Println(mochi)
	sort.Sort(sort.Reverse(sort.IntSlice(mochi)))
	// fmt.Println(mochi)
	under = 101
	for i := 0; i < n; i++ {
		if mochi[i] < under {
			under = mochi[i]
			mochi_num++
		}
	}
	fmt.Println(mochi_num)
}
