package main

import "fmt"

func main() {
	var D, T, S int
	fmt.Scan(&D, &T, &S)

	if D > T*S {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
