package main

import "fmt"

var X, A int

func main() {
	fmt.Scan(&X, &A)
	if X < A {
		fmt.Println("0")
	} else {
		fmt.Println("10")
	}
}
