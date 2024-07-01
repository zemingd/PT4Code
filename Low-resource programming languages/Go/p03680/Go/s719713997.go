package main

import "fmt"

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
	h := make([]bool, n+1)
	for {
		p = a[p-1]
		if p == 2 {
			return c
		}
		c++
		if h[p] {
			return -1
		}
		h[p] = true
	}
}
