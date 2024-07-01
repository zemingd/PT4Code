package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	a -= 1
	b -= 1

	if b%a == 0 {
		fmt.Println(b / a)
	} else {
		fmt.Println((b / a) + 1)
	}
}
