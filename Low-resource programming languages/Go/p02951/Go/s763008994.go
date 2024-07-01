package main

import (
	"fmt"
)

func main() {
	var A, B, C, left int

	fmt.Scanf("%v %v %v", &A, &B, &C)

	left = C - (A - B)

	if left < 0 {
		left = 0
	}

	fmt.Println(left)

}
