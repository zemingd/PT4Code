package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scanf("%d%d", &A, &B)
	fmt.Printf("%s\n", map[bool]string{true: "Yes", false: "No"}[(A*B)%2 == 1])
}
