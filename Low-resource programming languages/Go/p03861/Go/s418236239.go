package main

import (
	"fmt"
)

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	aa := 0
	if a != 0 {
		aa = a/x + 1
	}

	bb := 0
	if b != 0 {
		bb = a/x + 1
	}

	cal := bb - aa
	fmt.Print(cal)

}
