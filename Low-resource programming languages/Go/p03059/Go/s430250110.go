package main

import "fmt"

func main() {
	var A, B, T int

	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)
	fmt.Scanf("%d", &T)

	fmt.Println(T / A * B)
}
