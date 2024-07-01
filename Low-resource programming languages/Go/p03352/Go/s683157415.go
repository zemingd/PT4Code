package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scanln(&x)

	fmt.Println(logic(x))
}

func logic(x int) int {
	for i := 32; i > 0; i-- {
		if i*i <= x {
			return i * i
		}
	}
	return 0
}
