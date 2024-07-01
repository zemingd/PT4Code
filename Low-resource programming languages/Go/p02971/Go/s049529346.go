package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	var as []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		as = append(as, a)
	}

	baseAS := as
	sort.Sort(sort.IntSlice(as))

	for i := 0; i < n; i++ {
		for i := 1; i <= n; i++ {
			if as[i] == baseAS[n-i] {
				continue
			}
			fmt.Println(as[i])
			break
		}
	}
}
