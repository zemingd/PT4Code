package main

import "fmt"

var a, b, x int

func main() {
	fmt.Scan(&a, &b, &x)
	if a + b >= x && a <= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}