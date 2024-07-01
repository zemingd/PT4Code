package main

import (
	"fmt"
)

func main() {
	// Code for A - RGB Cards
	var r, g, b int
	fmt.Scanf("%d %d %d", &r, &g, &b)

	ans := 100*r + 10*g + b
	if ans%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
