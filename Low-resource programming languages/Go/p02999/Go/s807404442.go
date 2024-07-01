package main

import "fmt"

func main() {
	var X, A int

	fmt.Scan(&X, &A)

	if X < A {
		fmt.Print("0")
	} else if X >= A {
		fmt.Print("10")
	}

}
