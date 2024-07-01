package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	a, z := len(s), 0
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' && i < a {
			a = i
		} else if s[i] == 'Z' && i > z {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
