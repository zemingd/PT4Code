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
	var r bool
	c, p := 1, 1
	h := make([]bool, n)
	for {
		if h[p-1] {
			break
		}
		h[p-1] = true

		p = a[p-1]
		if p == 2 {
			r = true
			break
		}
		c++
	}
	if r {
		return c
	}
	return -1
}
