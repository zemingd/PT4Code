package main

import "fmt"

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if a > c {
		c, a = a, c
	}
	if a > b {
		b, a = a, b
	}
	fmt.Println(a * b / 2)
}
