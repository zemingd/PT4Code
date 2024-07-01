package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	coin := 0

	if A >= B {
		coin += A
		A--
	} else {
		coin += B
		B--
	}

	if A >= B {
		coin += A
		A--
	} else {
		coin += B
		B--
	}

	fmt.Println(coin)
}
