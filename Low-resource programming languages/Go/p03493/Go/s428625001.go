package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	fmt.Printf("%d\n", ABC081A(s))
}

// ABC081A ...
func ABC081A(s string) int {
	res := 0
	for _, c := range s {
		if c == '1' {
			res++
		}
	}

	return res
}
