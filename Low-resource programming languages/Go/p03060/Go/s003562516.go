package main

import (
	"fmt"
)

func main() {
	var n int
	var v, c []int
	fmt.Scan(&n)
	v = make([]int, n)
	c = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	max := 0
	for i := 0; i < n; i++ {
		tmp := v[i] - c[i]
		if tmp <= 0 {
			continue
		}
		max += tmp
	}
	fmt.Println(max)
}
