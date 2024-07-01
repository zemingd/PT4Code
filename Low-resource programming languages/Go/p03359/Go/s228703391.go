package main

import (
	"fmt"
)

var (
	a int
	b int
)

func main() {
	fmt.Scan(&a)
	fmt.Scan(&b)

	if b < a {
		fmt.Println(a - 1)
	} else {
		fmt.Println(a)
	}
}
