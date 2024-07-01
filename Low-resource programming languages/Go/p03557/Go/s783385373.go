package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	as, bs, cs := make([]int, n), make([]int, n), make([]int, n)
	
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		as[i] = tmp
	}
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		bs[i] = tmp
	}
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		cs[i] = tmp
	}
	sort.Sort(sort.IntSlice(as))
	sort.Sort(sort.IntSlice(cs))
	count := 0
	for i := 0; i < n; i++ {
		b := bs[i]
		tmp1 := n - sort.SearchInts(cs, b + 1)
		tmp2 := sort.SearchInts(as, b)
		count += tmp1 * tmp2
	}
	fmt.Println(count)
}