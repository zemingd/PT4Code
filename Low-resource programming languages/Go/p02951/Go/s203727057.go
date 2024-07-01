package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	if c > a - b {
		fmt.Println(c - a + b)
	} else {
		fmt.Println(0)
	}
}
