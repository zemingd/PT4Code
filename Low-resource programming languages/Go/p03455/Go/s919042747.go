package main

import "fmt"

func isEven(a, b int) {
	if a * b % 2 == 0 {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}
}

func main() {
	isEven(3, 4)
}