package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	var n, v int
	if a < b {
		n = b
		v = a
	} else {
		n = a
		v = b
	}

	for i := 0; i < n; i++ {
		fmt.Print(v)
	}
	fmt.Println("")
}
