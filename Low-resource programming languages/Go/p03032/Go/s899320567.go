package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vs[i])
	}

	ans := int(-1e18)
	for ll := 0; ll <= k; ll++ {
		lim := ll
		if n < lim {
			lim = n
			if n%2 != k%2 {
				lim--
			}
		}

		for p := 0; p <= lim; p++ {
			q := lim - p
			if q < p {
				continue
			}

			for l := 0; l <= q; l++ {
				r := q - l

				gs := make([]int, 0)
				for i := 0; i < l; i++ {
					gs = append(gs, vs[i])
				}
				for i := 0; i < r; i++ {
					gs = append(gs, vs[n-i-1])
				}
				sort.Ints(gs)

				v := 0
				for i := p; i < q; i++ {
					v += gs[i]
				}
				ans = max(ans, v)
			}
		}
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
