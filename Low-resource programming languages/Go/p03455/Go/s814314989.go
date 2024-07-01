package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	product := a * b
	if product%2 == 0 {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}
}
