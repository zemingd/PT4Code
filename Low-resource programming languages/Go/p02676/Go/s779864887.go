package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)
	var s string
	fmt.Scanf("%s", &s)

	if len(s) < k {
		fmt.Printf("%s", s)
		return
	}

	fmt.Printf("%s...", s[:k])
}
