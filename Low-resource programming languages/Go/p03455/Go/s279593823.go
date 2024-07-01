package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d:%d", &a, &b)

	if a&b&1 == 1 {
		fmt.Println("Odd")
	} else {
		fmt.Println("Even")
	}
}