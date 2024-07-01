package main

import (
	"fmt"
)

func solution(s string) string {
	if s[2] == s[3] && s[4] == s[5] {
		return "Yes"
	}
	return "No"
}

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(solution(s))
}
