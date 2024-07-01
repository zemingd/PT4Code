package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, h int
	fmt.Scan(&n, &h)
	b := make([]int, n)
	var a int
	maxA := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b[i])
		if maxA < a {
			maxA = a
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(b)))

	ans := 0
	for i := 0; i < n; i++ {
		bb := b[i]
		if bb <= maxA {
			break
		}
		h -= bb
		ans++
	}
	ans += (h + maxA - 1) / maxA
	fmt.Println(ans)
}
