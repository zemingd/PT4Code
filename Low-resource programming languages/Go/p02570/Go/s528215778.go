package main

import "fmt"

func main() {
	var D, T, S int
	fmt.Scan(&D, &T, &S)

	if D <= S*T {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
