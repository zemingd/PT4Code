package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	count := 0
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-i-1] {
			count++
		}
	}

	fmt.Printf("%d\n", count)
}
