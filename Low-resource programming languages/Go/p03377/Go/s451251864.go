package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	if a + b < x {
		fmt.Println("No")
	}
	if a > x {
		fmt.Println("No")
	}
	if a < x {
		fmt.Println("Yes")
	}
}