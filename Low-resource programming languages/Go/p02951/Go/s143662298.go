package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	l := c - a + b
	if l >= 0 {
		fmt.Println(l)
		return
	}
	fmt.Println(0)
}
