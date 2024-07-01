package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scanf("%d %d", &a, &p)

	fmt.Println(logic(a, p))
}

func logic(a, p int) int {
	return (a*3 + p) / 2
}
