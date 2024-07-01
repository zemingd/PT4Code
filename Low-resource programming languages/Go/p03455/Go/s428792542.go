package main

import "fmt"

func main() {
	var a int
	var b int
	fmt.Scan(&a, &b)
	if a * b % 2 == 0 {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}
}