package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if res := a * b; res%2 == 0 {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}
}
