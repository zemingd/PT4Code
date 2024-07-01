package main

import (
	"fmt"
	"strings"
)

func Solve(s string) int {
	var a int
	b := strings.Count(s, ".")
	n := b
	for i := 0; i < len(s); i++ {
		if s[i] == '#' {
			a++
		} else {
			b--
		}
		if c := a + b; c < n {
			n = c
		}
	}
	return n
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	var s string
	fmt.Scanf("%s", &s)
	result := Solve(s)
	fmt.Println(result)
}
