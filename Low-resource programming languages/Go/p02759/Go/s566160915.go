package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	answer := n / 2
	if n%2 == 1 {
		answer++
	}
	fmt.Println(answer)
}
