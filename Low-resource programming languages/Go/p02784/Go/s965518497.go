package main

import (
	"fmt"
	"sort"
)

func main() {
	var h, n int
	fmt.Scan(&h, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	// fmt.Println(a)
	for i := 0; i < len(a); i++ {
		h -= a[i]
		if h == 0 || h < 0 {
			fmt.Println("Yes")
			break
		}
	}
	if h > 0 {
		fmt.Println("No")
	}
}
