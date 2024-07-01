package main

import "fmt"

func main() {
	// Code for A - Don't be late
	var D, T, S int
	fmt.Scanf("%d %d %d", &D, &T, &S)

	if D <= S*T {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
