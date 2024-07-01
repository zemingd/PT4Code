package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var digits int
	for digits = 0; n > 0; digits++ {
		n /= k
	}

	fmt.Println(digits)
}
