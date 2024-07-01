package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int

	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	ans := 0
	for i := 0; i < n-1; i++ {
		ans += a[i]
	}
	fmt.Println(ans)
}
