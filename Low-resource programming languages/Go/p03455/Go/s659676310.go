package main

import (
	"fmt"
)

func main() {
	var a, b int

	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)

	if (a*b)%2 == 0 {
		fmt.Print("Even")
	} else {
		fmt.Print("Odd")
	}
}
