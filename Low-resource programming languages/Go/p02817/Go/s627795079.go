package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	x, y := 0, 0
	if k >= a {
		x = 0
		if k-a >= b {
			y = 0
		} else {
			y = b - (k - a)
		}
	} else {
		x = a - k
		y = b
	}

	fmt.Println(x, y)
}
