package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string

	fmt.Scan(&n, &s)

	r := strings.Count(s, "R")
	g := strings.Count(s, "G")
	b := strings.Count(s, "B")

	var exclude int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			k := j + j - i
			if k >= len(s) {
				continue
			}
			if s[i] != s[j] && s[i] != s[k] && s[j] != s[k] {
				exclude++
			}
		}
	}

	fmt.Println(r*g*b - exclude)
}
