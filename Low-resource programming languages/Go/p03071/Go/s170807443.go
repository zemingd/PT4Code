package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	x := 0
	if a > b {
		x += a
		a--
	} else {
		x += b
		b--
	}
	if a > b {
		x += a
		a--
	} else {
		x += b
		b--
	}
	fmt.Print(x)
}