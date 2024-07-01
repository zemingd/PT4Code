package main

import (
	"fmt"
)

func main() {
	var k int
	var s string
	fmt.Scanf("%d", &k)
	fmt.Scanf("%s", &s)

	if len(s) > k {
		fmt.Printf("%s...\n", s[:k])
	} else {
		fmt.Printf("%s\n", s)
	}
}
