package main

import (
	"fmt"
)

func main() {
	var A, B, C string
	fmt.Scan(&A, &B, &C)
	max := A + B
	if A+C > max {
		max = A + C
	}
	if B+C > max {
		max = B + C
	}
	fmt.Println(max)

}
