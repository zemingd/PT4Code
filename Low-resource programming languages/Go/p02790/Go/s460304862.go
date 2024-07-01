package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	var A, B string
	for i := 0; i < b; i++ {
		A += fmt.Sprintf("%d", a)
	}
	for i := 0; i < a; i++ {
		B += fmt.Sprintf("%d", b)
	}
	if A < B {
		fmt.Println(A)
	} else {
		fmt.Println(B)
	}

}
