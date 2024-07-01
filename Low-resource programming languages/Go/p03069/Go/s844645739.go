package main

import (
	"fmt"
	"strings"
)

func Solve(s string) int {
	var n int
	for i := 0; i <= len(s); i++ {
		a := strings.Count(s[:i], "#")
		b := strings.Count(s[i:], ".")
		if c := a + b; n == 0 || n > c {
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
