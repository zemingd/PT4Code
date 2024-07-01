package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d\n", &a, &b)
	if b < a {
		a--
	}
	fmt.Println(a)
}
