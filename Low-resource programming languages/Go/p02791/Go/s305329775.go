package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &p[i])
	}
	mn := 200000
	count := 0
	for i := 0; i < n; i++ {
		if mn >= p[i] {
			count++
			mn = p[i]
		}
	}
	fmt.Printf("%d\n", count)
}
