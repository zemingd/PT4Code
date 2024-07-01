package main

import (
	"fmt"
)

func main() {
	var A int
	var B int
	fmt.Scanf("%d %d", &A, &B)
	if (B == 1) {
		fmt.Printf("%d", 0)
		return
	}
	total := 1
	rest := B - A
	for ;rest > 0; {
		rest = rest - (A-1)
		total++
	}
	fmt.Printf("%d", total)
}
