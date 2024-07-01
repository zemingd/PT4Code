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
	lim := min(n, k)
	for a := 0; a < lim; a++ {
		for b := 0; b < lim-a; b++ {
			s := 0
			vv := make([]int, a+b)
			for i := 0; i < a; i++ {
				v := vs[i]
				vv = append(vv, v)
				s += v
			}
			for i := 0; i < b; i++ {
				v := vs[n-i-1]
				vv = append(vv, v)
				s += v
			}
			sort.Ints(vv)

			for i := 0; i < min(k-a+b, a+b); i++ {
				if vv[i] < 0 {
					s -= vv[i]
				}
			}
			ans = max(ans, s)
		}
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
