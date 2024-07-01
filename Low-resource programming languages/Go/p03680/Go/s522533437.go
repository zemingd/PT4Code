package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	fmt.Println(train(n, a))
}

func train(n int, a []int) int {
	p := 1
	for c := range a {
		p = a[p-1]
		if p == 2 {
			return c + 1
		}
	}
	return -1
}
