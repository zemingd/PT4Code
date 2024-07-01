package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	var cnt int
	for i, c := range s {
		if i > 0 && c != 'C' {
			if !isLower(string(c)) {
				fmt.Println("WA")
				return
			}
		}

		if i > 1 && i < len(s)-1 && c == 'C' {
			cnt++
		}
	}
	if cnt != 1 {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}

func isLower(s string) bool {
	return s == strings.ToLower(s)
}
