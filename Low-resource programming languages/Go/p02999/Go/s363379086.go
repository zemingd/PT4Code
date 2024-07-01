package main

import (
	"fmt"
)

func main() {
	var x, a int
	fmt.Scanf("%d %d", &x, &a)

	res := 0
	if x >= a {
		res = 10
	}

	fmt.Print(res)
}
