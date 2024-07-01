package main

import "fmt"

func main() {
	var A, B, X int
	fmt.Scan(&A, &B, &X)
	fmt.Println(B/X - (A-1)/X)
}
