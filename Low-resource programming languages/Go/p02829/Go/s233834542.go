package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)

	for i := 1; i <= 3; i++ {
		if A != i && B != i {
			fmt.Println(i)
		}
	}
}
