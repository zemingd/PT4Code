package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	if A*B%2 == 0 {
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}
