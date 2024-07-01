package main

import (
	"fmt"
	//"math"
	//"strings"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if a > b {
		tmp := a
		a = b
		b = tmp
	}
	if b > c {
		tmp := b
		b = c
		c = tmp
	}
	if a > b {
		tmp := a
		a = b
		b = tmp
	}
	fmt.Println(int(a*b/2))
}
