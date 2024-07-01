package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	cnt := 1
	result := 0
	for cnt < b {
		cnt = cnt + a - 1
		result++
	}

	fmt.Print(result)
}
