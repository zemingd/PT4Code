package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)

	train := n * a

	if train <= b {
		fmt.Print(train)
	} else {
		fmt.Print(b)
	}
}
