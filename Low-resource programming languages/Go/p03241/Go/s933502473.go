package main

import (
	"fmt"
)

func divs(n int) []int {
	r := make([]int, 0)
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			r = append(r, i)
			if i*i != n {
				r = append(r, n/i)
			}
		}
	}
	return r
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	d := divs(M)
	// sort.Ints(d)
	// fmt.Println("N", N, "M", M, "divs(M)", d)
	ans := 1
	for i := 0; i < len(d); i++ {
		v := M / d[i]
		if v >= N {
			ans = max(ans, d[i])
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
