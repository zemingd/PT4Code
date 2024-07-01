package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var start, end int
	first := true
	for i, c := range s {
		if first && c == 'A' {
			first = false
			start = i
		}
		if c == 'Z' {
			end = i
		}
	}
	ans := s[start : end+1]
	fmt.Println(len(ans))
}
