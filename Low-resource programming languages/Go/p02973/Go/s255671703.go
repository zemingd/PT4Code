package main

import (
	"fmt"
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
	m := map[int]int{}
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		a = append(a, t)
		v, ok := m[t]
		if ok {
			m[t] = v + 1
		} else {
			m[t] = 1
		}
	}
	r := 0
	var k int = 1e9 + 1
	for i := 0; i < n; i++ {
		if k >= a[i] {
			r++
			k = a[i]
		}
	}
	for _, v := range m {
		if r < v {
			r = v
		}
	}
	fmt.Println(r)
}
