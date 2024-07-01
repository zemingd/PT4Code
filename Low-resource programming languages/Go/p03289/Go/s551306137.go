package main

import (
	"fmt"
)

func slove(input string) bool {
	var cnt int
	s := []rune(input)

	if s[0] != 'A' {
		return false
	}

	for i := 1; i < len(s); i++ {
		if 2 <= i && i <= len(s)-2 && s[i] == 'C' {
			cnt++
		} else {
			if s[i] < 'a' || 'z' < s[i] {
				return false
			}
		}
	}
	if cnt == 1 {
		return true
	}

	return false
}

func main() {
	var input string
	fmt.Scan(&input)

	if slove(input) {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
