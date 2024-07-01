package main

import "fmt"

func main() {
	// Code for A - Payment
	var N int
	fmt.Scanf("%d", &N)

	fmt.Println((1000 - N%1000) % 1000)
}
