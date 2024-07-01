package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	vs := make([]int,n)
	cs := make([]int,n)
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		vs[i] = v
	}

	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		cs[i] = c
	}

	ans := 0
	for i := 0; i < n; i++ {
		if vs[i] > cs[i] {
			ans += vs[i] - cs[i]
		}
	}
	fmt.Println(ans)
}