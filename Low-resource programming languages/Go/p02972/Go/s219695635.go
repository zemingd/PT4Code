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
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		a = append(a, t)
	}
	t := make([]int, n+1)
	var b []int
	for i := n; i > 0; i-- {
		k := 0
		for j := k; j <= n; j += i {
			k += t[j]
		}
		if k%2 != a[i-1] {
			t[i] = 1
			b = append(b, i)
		}
	}
	bl := len(b)
	fmt.Println(bl)
	for i := 0; i < bl; i++ {
		if i == bl-1 {
			fmt.Printf("%d\n", b[i])
		} else {
			fmt.Printf("%d ", b[i])
		}
	}
}
