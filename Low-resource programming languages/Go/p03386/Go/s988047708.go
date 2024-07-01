package main

import "fmt"

func main() {
	// Code for B - Small and Large Integers
	var A, B, K int
	fmt.Scanf("%d %d %d", &A, &B, &K)

	for i := A; i <= B; i++ {
		if i < A+K || B-K < i {
			fmt.Println(i)
		}
	}
}
