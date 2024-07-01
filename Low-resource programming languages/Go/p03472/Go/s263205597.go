package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, h int
	fmt.Scan(&n, &h)
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	aMax := a[0]
	ans := 0
	for i := 0; i < n; i++ {
		if aMax > b[i] {
			break
		}
		h -= b[i]
		ans++
	}
	for 0 < h {
		h -= aMax
		ans++
	}
	fmt.Println(ans)
}