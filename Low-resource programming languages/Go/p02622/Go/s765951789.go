package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	count := 0
	for i, _ := range s {
		if s[i] != t[i] {
			count++
		}
	}

	fmt.Printf("%d\n", count)
}
