package main

import (
	"fmt"
	"unicode"
)

func count(s string, r rune) int {
	return count_range(s, r, 0, len(s))
}

func count_range(s string, r rune, from, to int) int {
	var cnt int
	for _, v := range s[from:to] {
		if v == r {
			cnt++
		}
	}
	return cnt
}

func count_lowers(s string) int {
	var cnt int
	for _, v := range s {
		if unicode.IsLower(v) {
			cnt++
		}
	}
	return cnt
}

func main() {
	var s string
	fmt.Scan(&s)
	if s[0] == 'A' && count(s, 'C') == 1 && count_range(s, 'C', 2, len(s)-1) == 1 &&
		count(s, 'A') == 1 && count_lowers(s) == len(s)-2 {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
