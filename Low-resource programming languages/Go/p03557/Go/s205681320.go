package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	as, bs, cs := make([]int, n), make([]int, n), make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	for i := range cs {
		fmt.Scan(&cs[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(as)))
	sort.Sort(sort.Reverse(sort.IntSlice(bs)))
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))

	j := 0
	bc := make([]int, n)
	for i := 0; i < n; i++ {
		if i != 0 {
			bc[i] += bc[i-1] + j
		}
		for ; j < n; j++ {
			if bs[i] >= cs[j] {
				break
			}
			bc[i]++
		}
	}

	ans := 0
	j = 0
	for i := 0; i < n; i++ {
		for ; j < n; j++ {
			if as[i] >= bs[j] {
				break
			}
		}
		if j != 0 {
			ans += bc[j-1]
		}
	}

	fmt.Println(ans)
}
