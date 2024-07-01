package main

import "fmt"

const n int = 5000000000000000

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)

	first := s[0]
	if k == 1 {
		fmt.Printf("%c\n", first)
		return
	}

	if first != '1' {
		fmt.Printf("%c\n", first)
		return
	}

	var end int
	maxEnd := len(s) - 1
	for end < maxEnd && s[end] == '1' {
		end++
	}
	if k <= end {
		fmt.Printf("%c\n", '1')
		return
	}
	fmt.Printf("%c\n", s[end])
	return
}