package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var s, t string
	_, _ = fmt.Scanf("%s", &s)
	_, _ = fmt.Scanf("%t", &t)

	fmt.Println(answer167A(s, t))
}

func answer167A(s string, t string) string {
	tLength := utf8.RuneCountInString(t)

	if t[:tLength-1] == s {
		return "Yes"
	}
	return "No"
}
