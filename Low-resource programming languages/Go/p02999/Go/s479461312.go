package main

import "fmt"

func main() {
	var X, A int
	fmt.Scanf("%d %d", &X, &A)
	if X >= A {
		fmt.Println("10")
	} else {
		fmt.Println("0")
	}
}
