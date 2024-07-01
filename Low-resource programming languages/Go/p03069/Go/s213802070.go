package main

import (
	"fmt"
)

func main() {
	var n int
	var s string

	c := 0

	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)

	for i := 0; i < n-1; i++ {
		if s[i:i+2] == "#." {
			c++
		}
	}

	fmt.Println(c)
}
