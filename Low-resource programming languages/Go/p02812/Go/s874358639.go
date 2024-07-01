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
	var count int
	for i := 0; i < len(s)-3; i++ {
		if s[i:i+3] == "ABC" {
			count++
		}
	}
	fmt.Println(count)
}
