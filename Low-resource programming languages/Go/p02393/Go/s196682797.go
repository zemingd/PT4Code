package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scanln(&a, &b, &c)
	if a > b {
		a, b = b, a
	}
	if b > c {
		b, c = c, b
	}
	if a > b {
		a, b = b, a
	}
	fmt.Println(a, b, c)
}
