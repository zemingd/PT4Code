package main

import (
	"fmt"
)

func main() {
	var n int
	v := make([]int, n)
	c := make([]int, n)
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	rvs := 0
	rcs := 0
	r := 0
	for i := 0; i < n; i++ {
		if c[i] <= v[i] {
			rvs += v[i]
			rcs += c[i]
		}
	}
	r = rvs - rcs
	fmt.Println(r)
}
