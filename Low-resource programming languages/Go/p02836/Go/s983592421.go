package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	total := 0
	for i := 0 ; i< len(s) / 2; i++ {
		if s[i] != s[len(s) - 1 - i] {
			total ++
		}
	}

	fmt.Printf("%d", total)
}
