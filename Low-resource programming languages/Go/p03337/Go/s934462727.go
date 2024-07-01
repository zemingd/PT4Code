package main

import (
	"fmt"
)

func max(n ...int) int {
	m := n[0]
	for _, v := range n[1:] {
		if v > m {
			m = v
		}
	}
	return m
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(max(a+b, a-b, a*b))
}
