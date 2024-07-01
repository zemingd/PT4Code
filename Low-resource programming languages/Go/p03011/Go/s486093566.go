package main

import (
	"fmt"
)

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	min := p + q
	if q+r > min {
		min = q + r
	}
	if r+p > min {
		min = r + p
	}

	fmt.Println(min)
}
