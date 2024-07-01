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
	if x == 1 {
		return 1
	}
	var result int
	for i := 0; i*i < x; i++ {
		result = i * i
	}
	return result
}
