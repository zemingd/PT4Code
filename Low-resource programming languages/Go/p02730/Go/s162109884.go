package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s)
	n1 := (n - 1) / 2
	n2 := (n + 3) / 2

	s1 := s[:n1]
	s2 := s[n2-1 : n]
	fmt.Println(s1, s2)

	if reverse(s) == s && reverse(s1) == s1 && reverse(s2) == s2 {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
