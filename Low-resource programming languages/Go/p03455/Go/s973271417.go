package main

import . "fmt"

func main() {
	var a, b int
	Scan(&a)
	Scan(&b)
	if a*b%2 == 0 {
		println("Even\n")
	} else {
		println("Odd\n")
	}
}