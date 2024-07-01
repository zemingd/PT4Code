package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	sorted := make([]int, n)
	copy(sorted, a)
	sort.Sort(sort.Reverse(sort.IntSlice(sorted)))
	for _, e := range a {
		ans := sorted[0]
		if e == ans {
			ans = sorted[1]
		}
		fmt.Println(ans)
	}
}
