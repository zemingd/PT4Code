package main

import (
	"fmt"
)

func main() {
	var c, p, N int

	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		var h int
		fmt.Scan(&h)
		if p <= h {
			c += h - p
		}
		p = h
	}
	fmt.Println(c)
}