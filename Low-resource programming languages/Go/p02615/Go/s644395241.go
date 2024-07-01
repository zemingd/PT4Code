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

	ans := a[0]
	c := 1
	for i := 1; i < n-1; i++ {
		ans += a[c]
		if i%2 == 0 {
			c++
		}
	}

	fmt.Println(ans)
}
