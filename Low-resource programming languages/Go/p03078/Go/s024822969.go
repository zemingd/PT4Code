package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	a := make([]int, x)
	for i := 0; i < x; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int, y)
	for i := 0; i < y; i++ {
		fmt.Scan(&b[i])
	}
	c := make([]int, z)
	for i := 0; i < z; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	t := make([]int, 110000)
	for ia, va := range a {
		for ib, vb := range b {
			for ic, vc := range c {
				if (ia+1)*(ib+1)*(ic+1) <= k {
					t = append(t, va+vb+vc)
				}
			}
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(t)))

	for i := 0; i < k; i++ {
		fmt.Println(t[i])
	}
}
