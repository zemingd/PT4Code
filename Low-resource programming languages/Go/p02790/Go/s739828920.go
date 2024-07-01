package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var A, B string
	for i := 0; i < b; i++ {
		A += strconv.Itoa(a)
	}
	for i := 0; i < a; i++ {
		B += strconv.Itoa(b)
	}

	if A < B {
		fmt.Println(A)
	} else {
		fmt.Println(B)
	}
}
