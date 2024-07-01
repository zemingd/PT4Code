package main

import "fmt"

func Max(a, b int) int {
	if a >= b {
		return a
	} else {
		return b
	}
}

func main() {
	var A,B int
	fmt.Scan(&A, &B)
	
	add := A + B
	sub := A - B
	mul := A * B
	
	fmt.Println(Max(Max(add,sub),mul))
}