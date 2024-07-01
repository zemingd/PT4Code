package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	for C := 1; C <= 3; C++ {
		if (A*B*C)%2 == 1 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
