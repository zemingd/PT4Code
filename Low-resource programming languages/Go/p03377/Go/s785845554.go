package main

import (
	"fmt"
)

func main() {
	var A, B, X int
	var ans string
	fmt.Scan(&A, &B, &X)

	if A <= X && X <= A+B {
		ans = "YES"
	} else {
		ans = "NO"
	}

	fmt.Println(ans)
}