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

	ans := 0
	for ll := 0; ll <= k; ll++ {
		lim := ll
		if n < lim {
			lim = n
			if n%2 != ll%2 {
				lim--
			}
		}

		for p := 0; p <= lim; p++ {
			q := lim - p
			if q < p {
				continue
			}
			// fmt.Println()
			// fmt.Println("*", ll, ":", q, p)

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

				if lim < ll {
					x := ll - l
					for i := p; i < min(p+x, q); i++ {
						if gs[i] < 0 {
							v += -gs[i]
						}
					}
				}

				// fmt.Println(l, r, gs, v)
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
