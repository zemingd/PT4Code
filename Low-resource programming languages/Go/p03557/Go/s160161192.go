package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	bs := make([]int, n)
	cs := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	for i := range cs {
		fmt.Scan(&cs[i])
	}
	sort.Ints(as)
	sort.Ints(bs)
	sort.Ints(cs)

	accum_b := make([]int, n)
	ai := 0
	for i, b := range bs {
		for ai < n && as[ai] < b {
			ai++
		}
		accum_b[i] = ai
	}

	sum := 0
	ans := 0
	bi := 0
	for _, c := range cs {
		for bi < n && bs[bi] < c {
			sum += accum_b[bi]
			bi++
		}
		ans += sum
	}

	fmt.Println(ans)
}
