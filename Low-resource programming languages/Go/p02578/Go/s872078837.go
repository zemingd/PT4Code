package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var a uint64
	var max, d uint64
	max = 0
	d = 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if i == 0 {
			max = a
		}
		if max < a {
			max = a
		} else {
			d += max - a
		}

	}
	fmt.Println(d)
}
