package main

import (
	"fmt"
)

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	minimum := minmin(p+q, q+r, r+q)

	fmt.Println(minimum)

}

func minmin(a, b, c int) int {
	min := a
	if b < min {
		min = b
	}

	if c < min {
		min = c
	}
	return min
}
