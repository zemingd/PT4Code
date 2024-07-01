package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		n int
	)
	fmt.Scan(&n)
	moti := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&moti[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(moti)))
	count := 1
	for i := 1; i < n; i++ {
		if moti[i] == moti[i-1] {
			continue
		}
		count++
	}
	fmt.Println(count)
}
