package main

import (
	"fmt"
	"sort"
)

func calc_gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return calc_gcd(b, a%b)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	gcd := xs[0]
	for _, x := range xs {
		gcd = calc_gcd(gcd, x)
	}

	for i := range xs {
		xs[i] /= gcd
	}

	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
	v1 := xs[0]
	modifiable := true
	for _, x := range xs {
		v := calc_gcd(v1, x)
		if modifiable && v == 1 {
			modifiable = false
			continue
		}
		v1 = v
	}

	v2 := xs[1]
	for _, x := range xs[1:] {
		v2 = calc_gcd(v2, x)
	}

	fmt.Println(max(v1, v2) * gcd)
}
