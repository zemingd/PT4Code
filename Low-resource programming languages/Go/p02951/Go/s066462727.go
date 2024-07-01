package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if a < b+c {
		fmt.Println(b + c - a)
	} else {
		fmt.Println(0)
	}
}
