package main

import "fmt"

func main() {
	// Code for A - Day of Takahashi
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	if b-a >= 0 {
		fmt.Println(a)
	} else {
		fmt.Println(a - 1)
	}
}
