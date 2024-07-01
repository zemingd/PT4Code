package main

import (
	"fmt"
)

func abs(a int) int {
	if a > 0 {
		return a
	}
	return a
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	fmt.Println(abs(a-b) + abs(b-c))
}
