package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	vs := make([]int, n)
	cs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vs[i])
		fmt.Scan(&cs[i])
	}

	r := 0
	for i := 0; i < n; i++ {
		if vs[i] > cs[i] {
			r += vs[i] - cs[i]
		}
	}

	fmt.Print(r)
}
