package main

import (
	"fmt"
)

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	count := 0
	for i := 0; i < n-1; i++ {
		if s[i] == '#' && s[i+1] != '#' {
			count++
		}
	}
	fmt.Println(count)
}
