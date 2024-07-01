package main

import "fmt"

func main() {
	// Code for A - B +/- A
	var A, B int
	fmt.Scanf("%d %d", &A, &B)
	if B%A == 0 {
		fmt.Println(A + B)
	} else {
		fmt.Println(B - A)
	}
}
