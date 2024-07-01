package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)

	w := b + c
	if w-a <= 0 {
		fmt.Print(0)
		return
	}

	fmt.Print(w - a)
}
