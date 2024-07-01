package main

import (
	"fmt"
)

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var N int
	fmt.Scanf("%d", &N)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}
	c := make([]int, N)
	for i := 1; i < N; i++ {
		c[i] = c[i-1] + abs(h[i]-h[i-1])
		if i >= 2 {
			cc := c[i-2] + abs(h[i]-h[i-2])
			if cc < c[i] {
				c[i] = cc
			}
		}
	}
	fmt.Printf("%d\n", c[N-1])
	return
}
