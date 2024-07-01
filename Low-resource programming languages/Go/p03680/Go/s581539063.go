package main

import (
	"fmt"
	"os"
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
	c, p := 1, 1
	for c <= n {
		p = a[p-1]
		if p == 2 {
			return c
			os.Exit(0)
		}
		c++
	}
	return -1
}
