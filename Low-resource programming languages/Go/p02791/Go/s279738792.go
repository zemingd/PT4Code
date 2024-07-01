package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	ans := 1
	min := p[0]
	for i := 1; i < n; i++ {
		pi := p[i]
		if pi <= min {
			ans++
		}
		if pi < min {
			min = pi
		}
	}
	fmt.Println(ans)
}
