package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	res := n / 2
	if n%2 != 0 {
		res++
	}

	fmt.Printf("%d\n", res)
}
