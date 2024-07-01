package main

import "fmt"

func main() {
	var a int
	var b int
	var c int
	fmt.Scan(&a, &b, &c)
	if a > c {
		tmp := a
		a = c
		c = tmp
	}
	if a > b {
		tmp := a
		a = b
		b = tmp
	}
	if b > c {
		tmp := b
		b = c
		c = tmp
	}
	fmt.Println(a, b, c)
}
