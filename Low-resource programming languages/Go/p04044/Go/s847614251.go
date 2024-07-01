package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	s := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if s[j] > s[i] {
				s[i], s[j] = s[j], s[i]
			}
		}
	}
	for _, v := range s {
		fmt.Print(v)
	}
	fmt.Println()
}
