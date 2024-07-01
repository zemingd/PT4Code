package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	max := -10000000
	if a+b > max {
		max = a + b
	}
	if a-b > max {
		max = a - b
	}
	if a*b > max {
		max = a * b
	}

	fmt.Println(max)
}
