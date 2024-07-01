package main

import (
	"fmt"
)

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C)

	if A*10+B > B*10+C {
		fmt.Println(A*10 + B + C)
	} else {
		fmt.Println(B*10 + C + A)
	}
}
