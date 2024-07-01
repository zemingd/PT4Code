package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	n := c - (a - b)
	if n < 1 {
		n = 0
	}
	fmt.Println(n)
}
