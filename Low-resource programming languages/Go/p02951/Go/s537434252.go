package main

import "fmt"

func main() {
	var A int
	var B int
	var C int

	fmt.Scanf("%d %d %d", &A, &B, &C)

	n := C - A + B
	if (n >= 0) {
		fmt.Printf("%d", n)
	} else {
		fmt.Printf("%d", 0)
	}
}
