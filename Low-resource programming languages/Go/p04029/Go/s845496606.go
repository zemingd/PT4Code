package main

import (
	"fmt"
)

func main() {
	var n int
	result := 0

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		result += i + 1
	}

	fmt.Printf("%d\n", result)
}
