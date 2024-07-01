package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Ints(b)
	sort.Ints(c)

	ans := 0
	for bi := 0; bi < n; bi++ {
		bv := b[bi]
		ai := sort.Search(n, func(i int) bool {
			return a[i] < bv
		})
		if n <= ai {
			continue
		}

		ci := sort.Search(n, func(i int) bool {
			return c[i] > bv
		})
		if n <= ci {
			continue
		}

		ans += (n - ai) * (n - ci)
	}

	fmt.Println(ans)
}
