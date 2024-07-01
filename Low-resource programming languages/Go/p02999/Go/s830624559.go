package main

import (
	"fmt"
)

func main() {
	var x, a int16

	fmt.Scanf("%d %d", &x, &a)

	fmt.Println(logic(x, a))
}

func logic(x, a int) int {
	if x >= a {
		return 10
	}
	return 0
}
