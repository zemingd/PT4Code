package main

import (
	"fmt"
)

func main() {
	var (
		a, b, c int
		x       int
	)
	count := 0
	fmt.Scan(&a, &b, &c, &x)
	for i := 0; a >= b; i++ {
		b *= 2
		count++
	}
	for i := 0; b >= c; i++ {
		c *= 2
		count++
	}
	if count <= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
