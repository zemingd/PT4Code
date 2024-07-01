package main

import (
	"fmt"
	"strings"
)

func main() {

	var s string
	fmt.Scan(&s)

	s_len := len(s)

	if s_len == 1 {
		fmt.Println(0)
	} else if s_len % 2 == 0 {
		zenhan := s[: (s_len / 2)]
		kouhan := s[ (s_len /2 ):]

		c := check(zenhan, kouhan)

		fmt.Println(c)
	} else {
		zenhan := s[: (s_len / 2)]
		kouhan := s[ (s_len /2 ) + 1:]
		c := check(zenhan, kouhan)

		fmt.Println(c)
	}

}

func check(a string, b string) int {

	rev := reverse(b)

	a_list := strings.Split(a, "")
	b_list := strings.Split(rev, "")

	count := 0

	for i := 0; i < len(a); i++ {
		if a_list[i] != b_list[i] {
			count = count + 1
		}
	}

	return count
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
