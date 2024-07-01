package main

import (
	"fmt"
)

func main() {
	var p int
	var q int
	var r int
	fmt.Scan(&p)
	fmt.Scan(&q)
	fmt.Scan(&r)

	min := p + q

	if p+r < min {
		min = p + r
	}
	if r+q < min {
		min = r + q
	}

	fmt.Println(min)
}
