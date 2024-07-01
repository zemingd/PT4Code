package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	cnt := 0
	result := 0
	for cnt <= b {
		if cnt != 0 {
			cnt--
		}
		cnt = cnt + a
		result++
	}

	fmt.Print(result)
}
