package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	plus := a + b
	minus := a - b
	multiple := a * b
	if plus >= minus && plus >= multiple {
		fmt.Println(plus)
		return
	}
	if minus >= plus && minus >= multiple {
		fmt.Println(minus)
		return
	}
	fmt.Println(multiple)
}
