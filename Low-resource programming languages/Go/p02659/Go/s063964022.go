package main

import "fmt"

func main() {
	var A, B float64
	fmt.Scan(&A, &B)
	a := int(A)
	b := int(B * 100)
	fmt.Println(int(a * b / 100))
}
