package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	mul := a * b

	if mul%2 == 0 {
		println("Even")
	} else {
		println("Odd")
	}

}