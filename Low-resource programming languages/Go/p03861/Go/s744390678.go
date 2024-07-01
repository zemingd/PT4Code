package main

import (
	"fmt"
)

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	switch {
	case a == 0:
		fmt.Println((b / x) + 1)
	case a == b:
		fmt.Println(0)
	default:
		fmt.Println((b / x) - ((a - 1) / x))
	}
}
