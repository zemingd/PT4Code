package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	var maxMatch int
	for i := 0; i < len(s)-len(t); i++ {
		matched := matchCount(t, s[i:i+len(t)]) 
		if matched > maxMatch{
			maxMatch = matched
		}
	}
	fmt.Println(len(t) - maxMatch)
}

func matchCount(a, b string) int {
	count := 0
	for i, v := range a {
		if byte(v) == b[i] {
			count ++
		}
	}
	return count
}
