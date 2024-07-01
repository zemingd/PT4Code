package main

import (
	"fmt"
)

func main() {

	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	if A >= 13 {
		fmt.Println(B)
	} else if 6 <= A && A <= 12 {
		fmt.Println(B / 2)
	} else {
		fmt.Println("0")
	}
}
