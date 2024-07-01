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
	p := 0
	for c := 0; ; c++ {
		if p == 1 {
			return c
		}
		if h[p] {
			break
		}
		h[p] = true
		p = a[p] - 1
	}
	return 0
}
