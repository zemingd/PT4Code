package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	a := B / A
	if a*A < B {
		a++
	}
	fmt.Println(a)
}
