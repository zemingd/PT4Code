package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	sl := make([]int, n)
	for i, _ := range sl {
		fmt.Scan(&sl[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(sl)))
	var cnt int
	for i, _ := range sl {
		if i == 0 || sl[i] != sl[i-1] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
