package main

import "fmt"

func main() {
	var a, b, c int

	fmt.Scan(&a, &b, &c)

	if ans := c - (a - b); ans > 0 {
		fmt.Println(c - (a - b))
	} else {
		fmt.Println(0)
	}
}
