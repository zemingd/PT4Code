package main

import (
	"fmt"
)

func main() {
	var A, B, X int
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Scan(&X)

	if A <= X && X <= A + B {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
