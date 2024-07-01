package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	if a > b {
		c = a
		a = b
		b = c
	}
	if a == 1 && b == 2 {
		c = 3
	} else if a == 2 && b == 3 {
		c = 1
	} else {
		c = 2
	}
	fmt.Printf("%d\n", c)
}
