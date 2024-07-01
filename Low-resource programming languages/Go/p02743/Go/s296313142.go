package main

import (
	"fmt"
)

func main() {
	var (
		a int
		b int
		c int
	)
	fmt.Scan(&a, &b, &c)

	lhs := c - (a + b)
	d := lhs*lhs - 4*a*b

	if lhs <= 0 || d <= 0 {
		fmt.Print("No")
	} else {
		fmt.Print("Yes")
	}
}
