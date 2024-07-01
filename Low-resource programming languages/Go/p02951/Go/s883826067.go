package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	nokori := c - (a - b)
	if nokori < 0 {
		println(0)
	} else {
		println(nokori)
	}
}
