package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n+1)
	bs := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&as[i])
	}

	c := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&bs[i])

		m := 0
		if as[i] < bs[i] {
			m = as[i]
		} else {
			m = bs[i]
		}
		as[i] -= m
		bs[i] -= m
		c += m

		if as[i+1] < bs[i] {
			m = as[i+1]
		} else {
			m = bs[i]
		}
		as[i+1] -= m
		c += m
	}
	fmt.Println(c)
}
