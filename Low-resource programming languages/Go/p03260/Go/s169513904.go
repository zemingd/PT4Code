package main

import "fmt"

func main() {
	// Code for A - ABC333
	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	if A%2 == 0 || B%2 == 0 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
