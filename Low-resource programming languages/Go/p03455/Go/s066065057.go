package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	res := "Odd"
	if (a*b)%2 == 0 {
		res = "Even"
	}

	fmt.Printf("%s\n", res)
}
