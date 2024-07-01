package main

import (
	"fmt"
)

func main() {
	var X, A int
	fmt.Scan(&X, &A)
	if X < A {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}
