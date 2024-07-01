package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if b+c-a > 0 {
		fmt.Println(b + c - a)
	} else {
		fmt.Println(0)
	}
}
