package main

import (
	"fmt"
)

func main() {

	var A, P int
	fmt.Scanf("%d %d", &A, &P)

	P += 3 * A
	fmt.Println(P / 2)
}
