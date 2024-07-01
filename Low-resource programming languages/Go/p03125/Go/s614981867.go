package main

import "fmt"

func main() {
	var (
		a, b int
	)

	if b%a == 0 {
		fmt.Print(a + b)
	} else {
		fmt.Print(b - a)
	}
}
