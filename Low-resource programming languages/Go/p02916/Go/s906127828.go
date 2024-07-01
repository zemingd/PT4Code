package main

import "fmt"

func main() {
	var n, sum int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	b := make([]int, n)
	for i := range b {
		fmt.Scan(&b[i])
	}

	c := make([]int, n-1)
	for i := range c {
		fmt.Scan(&c[i])
	}

	y := len(a) + 1
	for _, v := range a {
		v = v - 1
		sum += b[v]
		if y == v-1 {
			sum += c[y]
		}
		y = v
	}
}
