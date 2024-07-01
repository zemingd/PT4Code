package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	fmt.Println(((B - 1) + (A - 1 - 1)) / (A - 1))
}