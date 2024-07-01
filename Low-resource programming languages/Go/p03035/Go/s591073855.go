package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	if A <= 5 {
		fmt.Println(0)
	} else if A <= 12 {
		fmt.Println(B / 2)
	} else {
		fmt.Println(B)
	}
}
