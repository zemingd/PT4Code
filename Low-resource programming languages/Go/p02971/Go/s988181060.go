package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	sortAS := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
		sortAS[i] = as[i]
	}

	sort.Sort(sort.Reverse(sort.IntSlice(sortAS)))

	for i := 0; i < n; i++ {
		if as[i] == sortAS[0] {
			fmt.Println(sortAS[1])
		} else {
			fmt.Print(sortAS[1])
		}
	}
}
