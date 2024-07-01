package main

import "fmt"

func main() {
	// Code for A - Cats and Dogs
	var A, B, X int
	fmt.Scanf("%d %d %d", &A, &B, &X)

	if A+B >= X && A <= X {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
