package main

import (
	"fmt"
)

func main() {

	var A, B, C int
	fmt.Scanf("%d %d %d", &A, &B, &C)

	var result int
	result = C - (A - B)
	if result >= 0 {
		fmt.Println(C - (A - B))
	} else {
		fmt.Println("0")
	}

}
