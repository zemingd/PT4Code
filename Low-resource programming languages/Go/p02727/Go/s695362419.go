package main

import (
	"fmt"
	"sort"
)

var x, y, a, b, c int
var ps, qs, rs []int

func main() {
	fmt.Scan(&x, &y, &a, &b, &c)
	ps = make([]int, a)
	qs = make([]int, b)
	rs = make([]int, c)
	for i := range ps {
		fmt.Scan(&ps[i])
	}
	for i := range qs {
		fmt.Scan(&qs[i])
	}
	for i := range rs {
		fmt.Scan(&rs[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ps)))
	sort.Sort(sort.Reverse(sort.IntSlice(qs)))
	ps = ps[:x]
	qs = qs[:y]

	rs = append(rs, ps...)
	rs = append(rs, qs...)
	sort.Sort(sort.Reverse(sort.IntSlice(rs)))
	ans := 0
	for i := 0; i < x+y; i++ {
		ans += rs[i]
	}
	fmt.Println(ans)
}
