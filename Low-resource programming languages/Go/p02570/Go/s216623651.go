package main

import "fmt"

func main() {
	var D, T, S int
	fmt.Scan(&D, &T, &S)

	if D / S > T {
		fmt.Println("No")
		return
	}

	if (D / S) == T && D % D != 0 {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}
