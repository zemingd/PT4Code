package main

import (
	"fmt"
)

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(rs)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}

	return string(rs)
}

func checker(s string, words []string) bool {
	for _, w := range words {
		if len(s) < len(w) {
			continue
		}
		if s[0:len(w)] == w {
			if len(s) == len(w) {
				return true
			}
			return checker(s[len(w):], words)
		}
	}
	return false
}

func main() {
	var s string
	fmt.Scan(&s)
	words := []string{"dream", "dreamer", "erase", "eraser"}

	for i, _ := range words {
		words[i] = reverse(words[i])
	}
	s = reverse(s)

	if checker(s, words) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
