package main

import (
	"fmt"
	"sort"
)

var x, y, a, b, c int
var ps, qs, rs sort.IntSlice

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
	ps.Sort()
	qs.Sort()
	rs.Sort()
	ans := 0
	for i := 0; i <= x; i++ {
		for j := 0; j <= y; j++ {
			if i+j > c {
				continue
			}
			chmax(&ans, sum(ps[a-x+i:]...)+sum(qs[b-y+j:]...)+sum(rs[c-i-j:]...))
		}
	}
	fmt.Println(ans)
}

func sum(as ...int) (sum int) {
	for i := range as {
		sum += as[i]
	}
	return
}

func chmax(a *int, b int) {
	if *a < b {
		*a = b
	}
}
