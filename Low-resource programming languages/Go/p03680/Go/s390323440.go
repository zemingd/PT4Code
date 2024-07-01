package main

import (
	"fmt"
)

func main() {
	var n int
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	fmt.Println(train(n, a))
}

func train(n int, a []int) int {
	h := make([]bool, n)
	p, c := 0, 0
	var g bool
	for {
		if p == 1 {
			g = true
			break
		}
		if h[p] {
			break
		}
		h[p] = true
		p = a[p] - 1
		c++
	}
	if g {
		return c
	}
	return -1
}
