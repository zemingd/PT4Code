package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	sort.Ints(a)
	b := make([]int, len(a))
	copy(b, a)
	sort.Sort(sort.Reverse(sort.IntSlice(b)))

	lb, ub := int(-1e18), int(1e18)
	for ub-lb > 1 {
		mid := (lb + ub) / 2
		cnt := 0
		for i := 0; i < len(a); i++ {
			tmp := a[i+1:]
			if a[i] < 0 {
				tmp = b[:n-i-1]
			}
			l, r := -1, len(tmp)
			for r-l > 1 {
				m := (l + r) / 2
				if a[i]*tmp[m] < mid {
					l = m
				} else {
					r = m
				}
			}
			cnt += r
		}

		if cnt < k {
			lb = mid
		} else {
			ub = mid
		}
	}

	fmt.Println(lb)
}
