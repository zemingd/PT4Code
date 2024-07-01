package main

import (
	"fmt"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

func main() {

	var a, b, x uint64

	fmt.Scan(&a, &b, &x)

	y := (b - a) / x
	if a%x == 0 {
		y++
	}

	out(y)
}
