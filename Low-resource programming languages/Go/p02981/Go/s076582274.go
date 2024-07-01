package main

import "fmt"

func main() {
	var N, A, B int

	fmt.Scan(&N, &A, &B)

	if N*A > B {
		fmt.Print(B)
	} else if N*A < B {
		fmt.Print(N * A)
	} else {
		fmt.Print(B)
	}

}
