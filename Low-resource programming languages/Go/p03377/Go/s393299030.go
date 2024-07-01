package main

import (
	"fmt"
)

func main() {
	var (
		A, B, X int
	)
	fmt.Scan(&A, &B, &X)
	if A <= X && X <= A+B {
		fmt.Println("YES")
	}
	fmt.Println("NO")
}
