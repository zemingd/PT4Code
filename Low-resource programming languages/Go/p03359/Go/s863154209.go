package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	if b < a {
		a--
	}
	fmt.Println(a)
}
