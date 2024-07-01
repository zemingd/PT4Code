package main

import (
	"fmt"
)

func main() {
	var a, b, t int
	fmt.Scanf("%d %d %d", &a, &b, &t)
	fmt.Println(logic(a, b, t))
}

func logic(a, b, t int) int {
	return t / a * b
}
