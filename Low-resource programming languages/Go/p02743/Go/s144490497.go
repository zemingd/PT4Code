package main

import (
	"fmt"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)

	// sqrt(a) + sqrt(b) < sqrt(c)
	// a + b + 2 * sqrt(ab) < c
	// 2 * sqrt(ab) < c - a - b
	// 4ab < (c-a-b)^2
	d := c - a - b
	if d > 0 && 4*a*b < d*d {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
