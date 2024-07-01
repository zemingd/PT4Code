package main

import "fmt"

func main() {
	var a int
	var b int

	fmt.Scan(&a, &b)

	if a%2 == 0 || b%2 == 0 {
		fmt.Print("Even")
	} else {
		fmt.Print("Odd")
	}
}