package main

import (
	"fmt"
)

func main() {
	var a1, a2, a3 int
	fmt.Scanf("%d%d%d", &a1, &a2, &a3)

	if a1 > a2 {
		a1, a2 = a2, a1
	}
	if a2 > a3 {
		a2, a3 = a3, a2
	}
	if a1 > a2 {
		a1, a2 = a2, a1
	}

	fmt.Println(a3 - a1)
}
