package main

import (
	"fmt"
	"regexp"
)

var (
	idMatch = regexp.MustCompile(`^[a-z]+$`)
)

func registration(s, t string) string {
	if !idMatch.MatchString(s) || !idMatch.MatchString(t) {
		return "No"
	}
	if len(s) < 1 || len(s) > 10 {
		return "No"
	}
	if len(t) != len(s)+1 {
		return "No"
	}
	if s != string([]rune(t)[:len(t)-1]) {
		return "No"
	}
	return "Yes"
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	r := registration(s, t)
	fmt.Println(r)
}