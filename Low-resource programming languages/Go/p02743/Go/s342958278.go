package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)

	if answer(a, b, c) {
		fmt.Println("yes")
	} else {
		fmt.Println("No")
	}
}

func answer(a int, b int, c int) bool {
	return 4*a*b < (c-a-b)*(c-a-b)
}
