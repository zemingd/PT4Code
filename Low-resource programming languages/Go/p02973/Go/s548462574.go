package main

import (
	"fmt"
	"sort"
)

func pow(x, n, mod int64) int64 {
	if n == 0 {
		return 1
	}
	xx := x * x % mod
	r := pow(xx, n/2, mod)
	if n%2 == 1 {
		r = x * r % mod
	}
	return r
}

const mod = 1e9 + 7

func main() {
	var n int
	fmt.Scan(&n)
	var a []int
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		a = append(a, t)
	}
	var b []int
	for _, t := range a {
		i := sort.SearchInts(b, t)
		if i == 0 {
			b = append([]int{t}, b...)
		} else {
			b[i-1] = t
		}
	}
	fmt.Println(len(b))
}
