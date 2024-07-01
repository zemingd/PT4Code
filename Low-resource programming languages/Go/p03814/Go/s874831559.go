package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	a, z := -1, -1
	for i := 0; i < len(s); i++ {
		if a == -1 && s[i] == 'A' {
			a = i
		}
		if a != -1 && s[i] == 'Z' {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
