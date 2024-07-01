package main

import (
	"fmt"
)

func main() {
	var X, A int
	fmt.Scanf("%d %d", &X, &A)
	if X < A {
		fmt.Print("0")
	} else {
		fmt.Print("10")
	}
}
