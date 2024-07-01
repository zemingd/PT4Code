package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	ans := 0
	min := p[0]
	for i := 0; i < n; i++ {
		if p[i] <= min {
			ans++
			min = p[i]
		}
	}

	fmt.Println(ans)
}
