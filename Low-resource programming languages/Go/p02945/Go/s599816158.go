package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	max := A + B
	if max < A-B {
		max = A - B
	}
	if max < A*B {
		max = A * B
	}

	fmt.Println(max)
}
