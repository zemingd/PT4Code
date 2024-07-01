package main

import "fmt"

func main() {
	var a int
	var b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	var c int
	if b < 0 {
		c = a - b
	} else {
		c = a + b
	}
	if c < a*b {
		fmt.Println(a * b)
	} else {
		fmt.Println(c)
	}
}
