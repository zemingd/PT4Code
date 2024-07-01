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
		tmp := p[i]
		if tmp <= min {
			ans++
		}
		if tmp < min {
			min = tmp
		}
	}
	fmt.Println(ans)
}