package main

import "fmt"

func main() {
	// Code for A - Buttons
	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	var answer int
	for i := 0; i < 2; i++ {
		if A >= B {
			answer += A
			A--
		} else {
			answer += B
			B--
		}
	}
	fmt.Println(answer)
}
