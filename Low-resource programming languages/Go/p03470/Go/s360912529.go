package main

import (
	"fmt"
	"sort"
)

func mainA() {
	var n int
	fmt.Scan(&n)

	var wk []int
	for i := 0; i < n; i++ {
		var in int
		fmt.Scan(&in)
		wk = append(wk, in)
	}

	var res = abc088B(n, wk)
	fmt.Println(res)
}

func abc088B(n int, wk []int) int {
	var res = 0
	sort.Sort(sort.Reverse(sort.IntSlice(wk)))

	var tmp = wk[0]
	res++
	for i := 0; i < n; i++ {
		if wk[i] != tmp {
			tmp = wk[i]
			res++
		}
	}

	return res
}
