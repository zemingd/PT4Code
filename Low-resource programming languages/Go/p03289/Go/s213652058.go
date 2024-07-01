package main

import (
	"fmt"
	"strings"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(solve(s))
}

func solve(s string) string {
	// Cond1
	if string(s[0]) != "A" {
		return "WA"
	}

	// Cond2
	if strings.Count(s[2:len(s)-1], "C") != 1 {
		return "WA"
	}

	// Cond3
	cnt := 0
	for _, r := range s {
		if unicode.IsUpper(r) {
			cnt++
		}
	}
	if cnt != 2 {
		return "WA"
	}
	return "AC"
}