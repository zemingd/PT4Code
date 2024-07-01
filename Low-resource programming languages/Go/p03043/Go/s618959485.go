package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	var p float64
	for i := 1; i <= n; i++ {
		x := i
		q := 1.0 / float64(n)
		for x < k {
			q = q / 2.0
			x = x * 2
		}
		p += q
	}

	fmt.Println(p)
}
