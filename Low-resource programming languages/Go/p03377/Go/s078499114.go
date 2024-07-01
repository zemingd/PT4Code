package main

import (
	"fmt"
)

func main() {
	var A, B, X int
	fmt.Scan(&A, &B, &X)
	if A > X {
		fmt.Println("NO")
	} else if A+B < X {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
