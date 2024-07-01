package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	nokori := c - (a - b)
	if nokori < 0 {
		fmt.Printf("%d\n", 0)
	} else {
		fmt.Printf("%d\n", nokori)
	}
}
